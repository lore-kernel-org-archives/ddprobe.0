Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D28F7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645660584;
	h=To:Subject:From:Message-Id:Date;
	bh=PYZVAfOP9kF9BaMmOCFtYLyiZJE73b/IsyxXPGnR1yg=;
	b=EIgY4KOKpz8grkyrIiB/rXwHZFPO91rv/NCiWjDISxUW/hMEDYdBnl64/vMyERuV
	HtHGfeaLuaNuQtyg4WqN2WUz1mv3IXJb0qaYwO2ZInabIzQIWAfkMxwgU+yVth94O+b
	stp+reqtAouEr9C80mMAcpm4roc6hiz6M9mVR7P0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645660584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PYZVAfOP9kF9BaMmOCFtYLyiZJE73b/IsyxXPGnR1yg=;
	b=daS7zYCHWbLd2ZcZq4MjdzM22HxPZKHMDnPAaCrNtEqyfrGzOdqLbJc1aMKcdCcj
	eWcdf7vNKXpRjE+odr//ysmPWmT1wi4BuYJzhSUALMV9oAavBjd3E7HkVNrlQpTR4uH
	gnpKDCNTRIN/Mkkv8kDA1l0nqEN9kZa5U4M6kJ7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2903bb42-8c375f68-ff72-4ea5-b691-6e71a71afb63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c7d52722079da919bd8b1a7ebf217349bdaed89677cb3d2a7ca9959a6480126
Date: Wed, 23 Feb 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645660584
