Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66522695D
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645640484;
	h=To:Subject:From:Message-Id:Date;
	bh=pqPbC8Wy2+ahJpM2v6HRYAGjazAYnBQT0A45MlBd3o8=;
	b=Fb8qXOYv2h0tciiVCvC6vlcl5nGESB3kzcHkJ4gNmI0MggwMzNToGRUe8Eo6StOC
	XhqK0row4N0iZz1QbQ66Zz32QNaexwqn2sUs9toWrZpXZDV8Vt68H62AFlIC3fXWHDz
	OpB7yOF+NuC8joy0/7XAi3gTawRLkSH/iN08Nrt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645640484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pqPbC8Wy2+ahJpM2v6HRYAGjazAYnBQT0A45MlBd3o8=;
	b=EdawvjYIWC3wypSXruzfVB5aA8zV6tjwBRc8SWWmMS4UiJno5qIPMWKX4NqpFR+A
	wvZcb00TawXKO2sGKc3lPg4kvOEO9rvLHwStn5uaGwSPI2wVtLXjt4vB7/JkOpav9wB
	WocNA18Xbam2OaKaSySy3ZPyBUaVLzD4aBtBejCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27d107e3-65b3745e-ea2f-4ae4-8001-86c8e76550f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 531ff6ed096a64e53a7bfe6da207b96a6e675ad744f439704b3c6073b372c3c5
Date: Wed, 23 Feb 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645640484
