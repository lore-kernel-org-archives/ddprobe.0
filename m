Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764952F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645932984;
	h=To:Subject:From:Message-Id:Date;
	bh=1+TWSkq9lo74ri/8IhulKjuGgT37Mlyw91xoORgtmaA=;
	b=RDRM7JlRcI352mLojzj9+2ri5peY4cAsr3CJDSVsh3TSuL4mfdjZVttIE++9hAih
	pIOwXkURqw/uQrKklnfNq+etSFoQ/1SFJ+wiY1owtsmKAiUz2Yko6/AfmIQT4huSIex
	CBIAwmRnh4smII91lLVGdDiEE/CO4XnGbjGYTDMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645932984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1+TWSkq9lo74ri/8IhulKjuGgT37Mlyw91xoORgtmaA=;
	b=hPTgeWQegVFGpwSRdFdIDEecmO6t3oEvzyK+CkQPzlYOOrIXmkJavxyJbsBGb9m/
	RjhJLZFR0iCO8fqyTaRrKnPP/cbsp0Mdx8NyM8Is2LA/iUz8Sd4//kOZShaMejEpluB
	s4A51rXEZjoc/GzEyR9QOXLZLK5R9/Yo+jbRxm14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39403980-22a6b137-3498-4b4d-b6a8-de083cf3007e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b58078ccb58a6f8a6e909de396b67382dca63a62ac8e43555d0c64920174305
Date: Sun, 27 Feb 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645932984
