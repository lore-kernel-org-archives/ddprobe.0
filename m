Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47F517C9
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647787284;
	h=To:Subject:From:Message-Id:Date;
	bh=4csF/HT4foTan8C1R40pZUGlEH4uuFRvkJ6DC6nWKJ0=;
	b=P9eKAmT5xh1WRXoHyjWe+DCcOQaCTvk+v/vivA0JQQKsbkFlKXGgRTXaO6vSyEj8
	S4ugR+aJ31PYUiRXIccmuyuA1qKIToCTymoK+4qdvPdrMCBYmF3vAmri/3vZfBUg9UT
	ISvJjYM9L/YwW73q3umsJmpuDVy9spwRo9qYfFzQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647787284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4csF/HT4foTan8C1R40pZUGlEH4uuFRvkJ6DC6nWKJ0=;
	b=Zs4boJ74cQeLRIqx/1Cqp6JYxFPUsQeRhoU1FcQL+gUzghwHrGcjbl7N4DSKp0Ns
	SkjH/ACxEjYdHq5oIGzDrbW832HVfvfi44ucZsQV+pjOcSFSdA1cyYQzvCW6ZM4FYwP
	HLB0LcS6kd5UKpoDytkHJ+IwHeyiPFls6bCieZbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7c6991a-22292423-5618-4f43-923c-e2f3e2fe6792-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4acca3fcbd4eb595cd237b45d8432514bdc0993f5d9568db862c94b0022878cb
Date: Sun, 20 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647787284
