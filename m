Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CE323A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 13:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645797385;
	h=To:Subject:From:Message-Id:Date;
	bh=q80ogC8iIT6C+I14z9+5sWsV765X/44AVujaNtHXzGQ=;
	b=HH1huG10gIHlrTaCBvt8Gx1OnDcqDDIyqTMoVaFMMZD9qeGen15ChjQICk6N98yi
	VLpHuXr7nVEglaM+straigcql8w/qTOu196XxlvMW7wNrdPrhNZb3M92YXdI33K3Ymu
	Da9EqwB5Vo6wZWnkhDszZY3yVIhJyi8yelFdAf1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645797385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q80ogC8iIT6C+I14z9+5sWsV765X/44AVujaNtHXzGQ=;
	b=hJbOLRX6VOlRd/aYhz5QCoMQETpTf+wDCs5HP3gQpDml+uHEtBXVgdotnIQ58zP/
	8vt5E3snmZxcpVB8v/ggq9RuN8cC07HUWT9xbopvXVCbQh3fFSnBdOtrQfMstji4hgZ
	E0zLJowB9NLjAlSI9fKpojBX9DLBYnExtoC019o0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f312b2236-88a72805-ebba-4397-825b-f56cec6915f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 769b7a3c944874106588ca30cd4c6fc0ceeafa17778e4b3611fe95f053924a0b
Date: Fri, 25 Feb 2022 13:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645797384
