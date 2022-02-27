Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048047B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646006185;
	h=To:Subject:From:Message-Id:Date;
	bh=m97xzyLi9BJEgIgNDf3Nr2x2ggPVZUImwhGBV0pgeLE=;
	b=fQ9x8nKjGN2Po/aIH51dSIRzF7RUoMKTIYSnprRwOLjbHL6sLJ9TDicakoTjRi7B
	Nh+ElEOOGHdLiaNBgkJWc2zIEzKXly05PgIep3GcXwHzI0PHL+sZ8g7F/3x5C16gjbH
	1CsRlUwulkqopGhefAuKyFHqHF5EpCcx9TDIjVqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646006185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m97xzyLi9BJEgIgNDf3Nr2x2ggPVZUImwhGBV0pgeLE=;
	b=O/zJwjfdWePSYAJWejSvXpLsS7DHEK9YOEdvJBpqSNlzdZV7TNKLtpLAVmUITQ42
	45sCkeLEPQipJn2aAaet6Sa8jzkSXfPanrt+mpMY9eCps4REyqJKXAV5uXzaYilz5y0
	+OtuaxDFMeJZlQGN6LwI4bTucHT2loO3FlCGsT2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d9d2b1d-3149e8d1-0b0d-4239-8993-915763455876-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6e6eb11fc632c21997f8cc13c322ac3728ae8b20d899482fecf06f0979f0eec
Date: Sun, 27 Feb 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646006184
