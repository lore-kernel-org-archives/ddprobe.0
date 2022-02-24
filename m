Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584FD6ABC
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645744284;
	h=To:Subject:From:Message-Id:Date;
	bh=PzQrjyxw0oIrVHPMkU4WKI6KtmTkW8Jg6slwbuomK7o=;
	b=W/PALQxPoyQnBLYlexJeKMuER8UWdztraZsMDFDl8bjH0NClidSUO5jq7WgZ19tw
	+6MMaB4j3Y/tjQgyovAZceSehsfX7qWhctud/nOS6E6eDjM7BX+LWEpvEIqCVCRf1rM
	ewa/TNjY5FV/dThtxtgCflf10tb6vEt0buUNT1vM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645744284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PzQrjyxw0oIrVHPMkU4WKI6KtmTkW8Jg6slwbuomK7o=;
	b=SgnuUMQTwVZ3L9/iIp/x2DypSNqgo5vNetIMJZ8XqBAC410xP7QiNuP4bTbFTSVz
	s/N8A7FCgc5K5Mdfvvr/zjxX+AaspG5Bnyl1ScsHlqEVvvZm+aDqvVHVr3py6B9XQ9y
	Q5heJ4/hfDavY8b5lbFYf+x57Ag41wKLloglwyuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e00e44d-3a52da9b-f2a5-4d33-a419-a0ee01945e26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 413cf48fe2f4b7e5e7a70613f46ac2dfd73f4ec4060195fa8ccc2741f63ad336
Date: Thu, 24 Feb 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645744284
