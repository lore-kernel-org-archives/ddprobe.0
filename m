Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6332439F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647088884;
	h=To:Subject:From:Message-Id:Date;
	bh=RRjO3JoOl0Y/uwIXphOCwjsVldLxkmdimMmzv86MkXk=;
	b=EX5yR9Rjd1MkCuS7yY96yQsdMnzVOzoojaPPaKZqXq35dSnW0fMLYYoytTXv3YRe
	Z9Z3SUbYod0NJReTpSAapa4YhsFCOSnJ5AAm4Bye91Q86D09IT5yCq7X05HMSJJJZRb
	dN76l5ygPvtqdSIoApliN7KBvG9rb2ti+pKxro6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647088884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RRjO3JoOl0Y/uwIXphOCwjsVldLxkmdimMmzv86MkXk=;
	b=SjU5xzf3a6/xwH2lAbj/chFLYTvTd2ML4DmXoWpfyzYrHA2bT/+BxHGP3ZACVTn5
	Ay3fr41fgaK/Stmg5ukzksNQUKaPywO8E+Nh0KEICKs2VGr9hnIuzWD7blGBM3AL9zC
	9z/2EhuizY9LPhOz94hO1vQrK4wAcQGstAR/oaWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e25dbf7-5e224cfd-0539-491b-a4e6-09eaf319bc9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbc822f8a06e0b131e1e53f2dd920dda2317026ef5681ecf25b2d216e61ccd67
Date: Sat, 12 Mar 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647088884
