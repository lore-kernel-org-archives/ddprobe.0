Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEE6161
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646152585;
	h=To:Subject:From:Message-Id:Date;
	bh=7T9juOhBOQwvaFyC955GhC4x9Xl2CGvo2ny/NQb7oVI=;
	b=kVFgp+0N3lEjZzNNY8bsdSWLXLR1dX2KaQAtnuIKkI6D8YpgVKn14L3UMqJqh/Oy
	2RLeOwN1AfCZKFv5vNlHSGirvXzx0QO0Svlgyt8yJXq5nPUu8FW6Tl4RnlrF6OlTwKu
	8n+x+mFTfvphLf28XTKz09kuS9yC8N2xSK3USJyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646152585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7T9juOhBOQwvaFyC955GhC4x9Xl2CGvo2ny/NQb7oVI=;
	b=TAB326KavoY3SHzenT9FiPv6f4FFKYY7BuMyEYyIbeSnwbG89aWGf0P/asXcxTSg
	1lWKoGC1G/BbS0RYbz5hV/cMSowCNQRGfVwIIILLmukm6TEeWqGAU/k5oP+sE4jv9RC
	+i6Ia+0Qa4uX4me64uFr6nw7EAeg2MgWxpNd9jzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46570e9a-508b186e-82b4-486d-9f88-e3581db5c639-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbbffe552050d4287358e8b31d6792ecb4ae503646f540dd4ca17d61f6ded575
Date: Tue, 1 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646152584
