Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A587A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 07:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644822057;
	h=To:Subject:From:Message-Id:Date;
	bh=i2PLKY/t8BQY929jgBxMxas4NF1nWjDuOgC4sa0xWI8=;
	b=CXWi6ds+OUttUHYADcKYp08miaqHiS+e9o/6wXVvHS25rp99lo9ZnMA8r1m5Ey5K
	qDRZt13f8atGLq63S3c67wQ5kMLJhe00YyBOhnMLhZtqCMbDrDnPvUG1rzPm6P2HA7s
	JO1vtpY439zyjZ+kPxHMt/j4Wdug4n6zwD6JeBBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644822057;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i2PLKY/t8BQY929jgBxMxas4NF1nWjDuOgC4sa0xWI8=;
	b=BsRYHPRqbm98Y77gwJOWGCul7uDhDa6LL7PX+RnhqosQTG+nVwk3QAKvdEE4lMx3
	7JSgAxfZ6bYcZBlgMXcmEMs+ihHUAhYOGoCHGG4NHCBlniLCAhplMk+YRsyAQr/uDkX
	gMQqekcwvQjib8Z1UmLVitWZEVVOHvMcdHZ0bL0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef708d20b-c8c2cc2a-41b0-4ffc-8f79-518f3eaba02e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0cd9dfdc252334617fd53e848ee029ce4582aa3530ec213fa7ce792d83d05b1
Date: Mon, 14 Feb 2022 07:00:57 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644822057
