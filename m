Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CDB4C75
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646000785;
	h=To:Subject:From:Message-Id:Date;
	bh=NH3IOx77o4dJ3mnt+Y6UEEc7B9VmEnhF4plpxWLfReM=;
	b=e8FXcVQpjjHaSWl3S3+bQsLQyVR2fMdy/4F2pep59RWN5w37W4up2ri0o8Ov82wP
	h3+kV92si+XWfFZBnoaQy/9w4kLbbvzLk7BpGkOaqqVYgWFryBPMJHSJJcHuZSzr+bj
	CQ1r0Z42FU+DAZ109iju8GgzP881/oiKUibjKaKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646000785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NH3IOx77o4dJ3mnt+Y6UEEc7B9VmEnhF4plpxWLfReM=;
	b=fydoTJ9laeZX3FsTrfXxa1xn2v1+K+Y2tqx75k+FskusGA0O4adu7bTRAz0sM8Lx
	v4YNIziDnx3K33ylCJemtfDF1HfOB9oDM/r2d+NDHLqgAk2YJBUlo2xIWNJqyj1/2py
	qHOJ7cEQkhzTZb8gGXGsQzERlMBSsVA6A4F6tgkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d4ac581-21ea9186-6d45-4aac-afda-54b7dabc0250-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f7422327516c6c3595d3067c2172d14cafb2fac07e7148a52bf4c8856b728ae
Date: Sun, 27 Feb 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646000784
