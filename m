Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0786E184A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 14:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650464218;
	h=To:Subject:From:Message-Id:Date;
	bh=ckUvHd3z8WMe24U8VNPx6l6R4CCjWi1noptlxTnxuUg=;
	b=iSfWyxmsTjf377oSXUG7eZTyoRxWWMUv+fSAIzWyO5gpcW5qpWrWjjrYaKHU+I6m
	fq6MpHYCcQpV4xEwAam3fbUu1CmHTgjDi3yPYabpvcAMyj3fya4tPDst46TOzlOXadz
	GCrAJCnNOQhDxIN2BG0mG2Fr4GebDf6XV7oA4PHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650464218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ckUvHd3z8WMe24U8VNPx6l6R4CCjWi1noptlxTnxuUg=;
	b=Mg18Thffj41c8mb41B6gxcXTwCt0U83jI7Gvg97tmHivqQyAvJMMgL3PdOyQc5Om
	uTossM/CK/XPUZpfXmVrP9ol4/rxNF9bOhs0mE/yfcDBc60YwCvLu8dG1IgDWLdcumt
	aFMy3GnRny2PFwYhwMnTavnb18wshfFVKyqlV3vM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047555c80-8795b6a3-7b70-43af-ae10-39054e6ab882-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5fe03cc63ac971b164c71589c40c67757e2d87a3a7614fc9df32e1e8e7a0185
Date: Wed, 20 Apr 2022 14:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650464218
