Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3653B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645882584;
	h=To:Subject:From:Message-Id:Date;
	bh=erkMhzvUbFvrdgZX1UluenMkl4SzuwrsByyEeFu/WWg=;
	b=iintTkizsDX0JirJyKZKBsyCO9llurgaGCrzdAmuFSkBxUeC2IO+XMuNsXUkx/2I
	3eH9tbfM0ytHH5A/aYg1PRuYgYOy7sBjASBjuysj9qP2i3/WK8wp05pW28zChn98vkb
	AqEsq9x216dIAPn5m1Bhc17uiZwpbZgfMJOtWTHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645882584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=erkMhzvUbFvrdgZX1UluenMkl4SzuwrsByyEeFu/WWg=;
	b=UxoVRv2JzYsqXbw1PlFbZDhPuTuyNbE44DsSeJnB5gmjuUezm7KWpbgKzZap9Rk1
	KicB6q4HbbJsE26+pAOXVwQ9rpkFsFDBYfYlZl63xF71HMNDKI0IaS43eeZW12raFVT
	qAssFgfwb2Yr2dgjlpNoxTqPfz9/8Pg+lNRR9gqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f363f2ea2-1b5987dd-1ca1-4a7f-ae1a-8c3f6765fa33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53ffdb670d41b915e44423b7564ea282e8f2e3c00c129c5e5b3a0758105c70f9
Date: Sat, 26 Feb 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645882584
