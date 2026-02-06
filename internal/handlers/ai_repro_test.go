package handlers

import (
	"bytes"
	"io"
	"net/http"
	"testing"

	"github.com/google/uuid"
	"github.com/shridarpatil/whatomate/internal/models"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"
)

// MockTransport for testing API calls
type MockTransport struct {
	mock.Mock
}

func (m *MockTransport) RoundTrip(req *http.Request) (*http.Response, error) {
	args := m.Called(req)
	return args.Get(0).(*http.Response), args.Error(1)
}

func TestGenerateAIResponse_Repro(t *testing.T) {
	// Setup minimal app
	app := newProcessorTestApp(t)
	
	if app.HTTPClient == nil {
		app.HTTPClient = &http.Client{}
	}

	// Swap the transport
	mockTransport := new(MockTransport)
	app.HTTPClient.Transport = mockTransport

	// Test 1: Google Provider (Correct)
	t.Run("Google Provider", func(t *testing.T) {
		settings := &models.ChatbotSettings{
			OrganizationID: uuid.New(),
			AI: models.AIConfig{
				Enabled:  true,
				Provider: models.AIProviderGoogle,
				APIKey:   "test-key",
				Model:    "gemini-pro",
			},
		}
		
		// Mock response
		responseBody := `{
			"candidates": [{
				"content": {
					"parts": [{"text": "Hello from Gemini"}]
				}
			}]
		}`
		r := io.NopCloser(bytes.NewReader([]byte(responseBody)))
		
		mockTransport.On("RoundTrip", mock.Anything).Return(&http.Response{
			StatusCode: 200,
			Body:       r,
		}, nil).Once()

		resp, err := app.generateAIResponse(settings, nil, "Hi")
		assert.NoError(t, err)
		assert.Equal(t, "Hello from Gemini", resp)
	})

	// Test 2: OpenRouter Provider (Correct)
	t.Run("OpenRouter Provider", func(t *testing.T) {
		settings := &models.ChatbotSettings{
			OrganizationID: uuid.New(),
			AI: models.AIConfig{
				Enabled:  true,
				Provider: models.AIProviderOpenRouter,
				APIKey:   "test-key",
				Model:    "openai/gpt-3.5-turbo",
			},
		}

		responseBody := `{
			"choices": [{
				"message": {
					"content": "Hello from OpenRouter"
				}
			}]
		}`
		r := io.NopCloser(bytes.NewReader([]byte(responseBody)))

		mockTransport.On("RoundTrip", mock.Anything).Return(&http.Response{
			StatusCode: 200,
			Body:       r,
		}, nil).Once()

		resp, err := app.generateAIResponse(settings, nil, "Hi")
		assert.NoError(t, err)
		assert.Equal(t, "Hello from OpenRouter", resp)
	})

	// Test 3: "gemini" Provider (Typo) - Should fail or fall through
	t.Run("Gemini Provider (Typo)", func(t *testing.T) {
		settings := &models.ChatbotSettings{
			OrganizationID: uuid.New(),
			AI: models.AIConfig{
				Enabled:  true,
				Provider: "gemini", 
				APIKey:   "test-key",
				Model:    "gemini-pro",
			},
		}

		resp, err := app.generateAIResponse(settings, nil, "Hi")
		assert.Error(t, err)
		assert.Contains(t, err.Error(), "unsupported AI provider")
		assert.Empty(t, resp)
	})
}
