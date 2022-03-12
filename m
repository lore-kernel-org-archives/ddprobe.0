Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B60A4280
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647087684;
	h=To:Subject:From:Message-Id:Date;
	bh=SAQ1/ZJd7c/Gd3IqcDKK8bFcDjJNDQxsXYxR1+9ztYg=;
	b=OEI0QaBsK2D5T9DBwO0Ll1+2nX8o81uGfuu67jBmVr2I2RYqZCneus46Q6R34yoK
	EmxEXKugXSyLwKY6vEWJQPd/mODpPsaiVKyaLRYyQDtD81ybNUkXmwde3VSCGILxP/r
	FFHYdg8ml899hHIWH/phTssAavwOOAiepx2t2Lxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647087684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SAQ1/ZJd7c/Gd3IqcDKK8bFcDjJNDQxsXYxR1+9ztYg=;
	b=M4gfSzWEbEJsncDlyOglKfxPhFqY4l9BM58ae7LHqoaMtXkB/Tts7xHd4ybT70Jb
	N2p9sLwdVQ6G24QAT4EQYoXWqkhrp/sfLnU2zgODn7/1pOKmr1Y0THcmiAVGtHSQE1a
	uipTpPWLANPF17aR+lawOblJWD6ptjbJhwJ747XI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e138c75-ebbecb3a-4431-4be5-bc07-6375f9a244dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2a2fa43023221633a972922555295b9531566c7b9f1e7fa8a0dbfa13d3fd014
Date: Sat, 12 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647087684
