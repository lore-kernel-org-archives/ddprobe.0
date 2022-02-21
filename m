Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623772568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645477284;
	h=To:Subject:From:Message-Id:Date;
	bh=Y+xmCdqmIWvFiOCHzgyZUPjI3U1GlUHFHFvUYu+2HJY=;
	b=frGEPtpKNzq7HaKHfxlEDqp3H+2DqJK2erunxb4S+JqiFyFIK7uC0w/R5LCQLih/
	/8FEUGKdKe8Zx56MfnBW8wePODC2elJiLiPuPAigy7eH/+GA5g9HMYC0HT07NDWED++
	QFFClmGmg1GrmwuQMRPTvg+3WXZ625IJx0+NRlP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645477284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y+xmCdqmIWvFiOCHzgyZUPjI3U1GlUHFHFvUYu+2HJY=;
	b=YItO+VmjZQTl9EzB0lkW8+ZqO0AR9NeUMo7L8+ztwuzNPZqGmK8xd8fS9qcXtBDO
	PhXblE2OYjVxHPR/TqHbQCzzfme4W1Ko7O8GRSN43prVO5uF57rgl91yfGYDU1qbAox
	DAlSg19QZFeikwAc0qb/fWlsAWSGwvnMMadk61bI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e16cbd2-4f8f0459-f0a7-40c3-a057-645b0ea89488-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b12e17de26780a71a162be664c6211f6cf84d43ba2569b7dff3c09affd69e65
Date: Mon, 21 Feb 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645477284
