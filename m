Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600372F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645925784;
	h=To:Subject:From:Message-Id:Date;
	bh=SrgwJcTpBjjasjjylGeg84OXx5hCcIG57NTsaj1QzyA=;
	b=lPlvkWZG70TNY2BidJoigkaGj5NsBQjvR6jMoVI2WpehQsR3yRIOaYGJOcENWk3s
	heLMVuyG9B5jkqmx87nF8dFIoyBN+MG2godQSLlK+d7TXgVnpQGONH14AsnYh6TyjOk
	NkgOQDjm63ov7ZL17mXf+rAfa1XyErsd30djXowo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645925784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SrgwJcTpBjjasjjylGeg84OXx5hCcIG57NTsaj1QzyA=;
	b=YS5s3BPI/xGz1+KztZ8GdtsKqL9SX2cUzAzEIsODjUlKH3oRFCcZ0Fqc8Yokumc6
	yZy70FDWvQuqmDfRBY54kGrHkPnSamiSE26MfYqQslA0wREOzZ1vCEr+lUekmtn1Z15
	gscmXlECqy45GP+rOJVoQYAzWQPggMOx4MRz67GM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38d25c9a-8805ff29-a583-441a-9c51-ee6874ebc2e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71f37697ce6330454840a846c82a7bda2f2143be2633b085ec9422c5135cd534
Date: Sun, 27 Feb 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645925784
