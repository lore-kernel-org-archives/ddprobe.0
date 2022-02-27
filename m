Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF977C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645942884;
	h=To:Subject:From:Message-Id:Date;
	bh=330k7yQvu0xi7OjmBf3jKPBDO1rzLrOe8jm4a0NPimU=;
	b=hop7sjH0RnkT5Xavgr0H55Hj+WDTDswKv9PvdLaAJd7cx8mSJxGZWxd5o1FWXUIL
	N8wn/U2VbAZAA3QPQehwpUbpR97VGcgxi6iRp8y82sPrcss3ouYm5RYhu/4riTzBA9l
	JnSBHSk1Ja11n4clx5HaWGh5Te7ECgg1VvlpVr0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645942884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=330k7yQvu0xi7OjmBf3jKPBDO1rzLrOe8jm4a0NPimU=;
	b=fc16vUurJMjC/38BdNOIuEi2aAyCxDqoSp7Yypembb0pfB4uMqmnjTbeSODTZ7cV
	KxWL6U2h9IVA5vQKzK1qb4V8/k4k7tw7HcqPIbCNCYtbVFLkt1RWaYtwkV8592D1MNM
	RVGL5L5AIcdIYb28PwOfXnWSY7Nzwll7//X+RV68=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39d749af-d030e3e9-ae7b-4e87-84ef-798fe8bcf2bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2261a6f3f3b872e33d82aeff893252ecc47ba30d47b9f878d714b84159bc11a0
Date: Sun, 27 Feb 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645942884
