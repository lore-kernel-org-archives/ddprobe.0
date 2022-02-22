Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD50634
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645542985;
	h=To:Subject:From:Message-Id:Date;
	bh=0DGs6r1UYUso+9Fn2cpoXrMIgOJL5lrsquJxezK47Cc=;
	b=icTc5dNAdmzOJ9lSCdIfKM2cGf9AYygmbxfGhfREl0Hfc4OFO7SgY9CHM0s/05N2
	gwErtTpLFwvXLXabSaMcgOteVAu1Y2ErBfuqwMtG6EFcO6rr9mjJNRHQddDWbYipWvb
	feF46+ScwZsQlv4AhaWIFAIact0rb6uep5qqJcls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645542985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0DGs6r1UYUso+9Fn2cpoXrMIgOJL5lrsquJxezK47Cc=;
	b=mFyZLzmtiF2H0EYsxPS91Hc3eQae8pm6oeNtw8gAT0OTzKzIKeiKQVepBAjsKpxR
	qKxLtCXL75mdpa8jkx14y6IzvQNM9n/JWGLMIaPZCd0KELm7kS2/vrgb/rHKyKCGFhD
	k2Ao3kWmtu/ZFTQmfjLt007ot+HroJeEtwBAs+w8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22014c49-50e891fa-cbee-4d71-84b3-9aaf5d51f8a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a4b2aa48e0d3ece18213688e0c69d620d3a6fdea3b30d3f5fc181594b30da23
Date: Tue, 22 Feb 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645542984
