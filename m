Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1EA33C3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658677013;
	h=To:Subject:From:Message-Id:Date;
	bh=7PLl/6UeOTnvxdGwbYaE+z+Cg7Qz+xi8yD7mkEQFnoU=;
	b=ZJVTiChhh8jG/PRRNI04+A5g5vtg8u5Q5LdLErgK9CdQWHwT+kC1S1CeroJjmkDG
	sl9vovm/RPAQgFIMjFGVYHSFms1zRR8OyefZip14j0DaNtzgV0dB7qjzP2Ir7ZKNsta
	zh/XJ1GWWTMfivrMG+g+wSmcZ6peJzi5z3/ex2qI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658677013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7PLl/6UeOTnvxdGwbYaE+z+Cg7Qz+xi8yD7mkEQFnoU=;
	b=Rn3m+9O1PPQbtUlNJwI7CokqtuBsnBoDE0NjBHPSvZsRtoazU0oJwEci3d9sxVCq
	N9zLADOaXivTuJ2AOmkulW6W+hUHHWurnw542FnPHV1NnrySHVr29AgKcUxpFKSzZ7O
	qrySXYTQS9Tx4P5FUGUHdYO8sO5qkzlhxuaM+gLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230daa776-e855f2f8-546a-42ae-9459-24591a3effa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 492311b2b4969d078ce1b64c41d41325fad3161f990c0d26dedf11db260b9c9a
Date: Sun, 24 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658677012
