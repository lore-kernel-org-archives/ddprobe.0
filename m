Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19091561
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644934284;
	h=To:Subject:From:Message-Id:Date;
	bh=GJXY5GPLVzx1Kh9LHwAjZBspcYfWpCPfFeXx3CUf1oY=;
	b=iBjv7IZz9u0pFE8GyhPmxOqfCNZeCqgXt3RROKxoU8Vih+f2qPRaEr201x+ZDyFy
	pkFJTfxFMDzxfmqNsdUJ/+1A6f6AQcHDJQDuaoCgPpMO7xHAcYdRuj4GkpoKk129a0v
	qNoNXc4yGvaFhFMPPWedVGGDdYCH1Mlt6WlveF0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644934284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJXY5GPLVzx1Kh9LHwAjZBspcYfWpCPfFeXx3CUf1oY=;
	b=dWgfOYe4khnXdxTvSD4a/L6U6KYhimIqLioRNElzNCRIAb/yYHTlmu1ouAfqisXS
	UqVoI7BovEYHUTr8LLdJjlS3RnZL1xI+BgQfTume2oio3mwffLFY0tqN1qLp16CN9E+
	SLkyf31qfAtnUANyVmWyOaNs7ta9xH7AeKDOmpbE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efdb945ec-2506dfb2-e3a8-4c1a-b837-531f4bca5e71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28d20e6e80cd3b3d8e0630f31e25b24e770f5a49cbb04a5b6e9d4e0bfc6e0b93
Date: Tue, 15 Feb 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644934284
