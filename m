Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5625EC8
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645384585;
	h=To:Subject:From:Message-Id:Date;
	bh=THhuKN1TTK1VjqnHYfxBYfdw+1x6VMm+XySJHsov9Z4=;
	b=OoduvtuWr/GHaN1KtroqPxYutpyS9OKcFGNJ8+zqccQSzXulxZNdnoTeTWjdJkWm
	9n1TEb4hB4aULWiYnt663ApGbQTz5V2hRlNgRsq5s+7GfHy3N9AiWPBeyYrip/n4UgW
	7QiGhm72t3jOoVbrBS6+mJ81VhtxB0fbP0mtK1VA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645384585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=THhuKN1TTK1VjqnHYfxBYfdw+1x6VMm+XySJHsov9Z4=;
	b=I2rHAaEX5CLcxiHKP3yQr/9Lz9W74D3DaLdLy3TsdXRb7iApaXUB1+v17P74LMaH
	Vwc1rovzGp4Br8HVmG7+quyYpJXERMyMtewAXAkdJPJZg4jHTyGyGg492u+pDU/sNX8
	WQ3O6RynlRdSw7uVomEyGwZt7KY2KlWxGSVcEtpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18904e5e-2bb14662-2e1f-4bb1-9dd6-9b68a13f61e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e6650caf5b460fa87e7585c79fca03d8f5463ad85c74881ad8c8f641cd94f43
Date: Sun, 20 Feb 2022 19:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645384584
