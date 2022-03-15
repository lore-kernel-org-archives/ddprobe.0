Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7052C1B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647330384;
	h=To:Subject:From:Message-Id:Date;
	bh=rwxOvgMO0nOHKvJIQfb4iW8jKZM+Q6GGB6tXjl9pziY=;
	b=fwEMSwnH5ChvnuSR9JmrCEJd6SsKiLCeiM392Hpxs9oAK9j773+kCS3e60G4mL9N
	pmIJYc0nHmSPT+DN2MM0TDDBMfBrMPk10B76RPlf5P7GFLihxQHSoCGK35jzKwsDiG/
	z5bI7qz8nlUzWQt8ZGW4BbuLzyoqWkHeY9xfyhA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647330384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rwxOvgMO0nOHKvJIQfb4iW8jKZM+Q6GGB6tXjl9pziY=;
	b=IA+y+X8MzkKD0RRAsvDTooY8nBfH/67XmjaXgbx783j4T4YGMS+yqa9okd51H1xu
	qNvOuQneGummrfR8QcHCjq7bVknA5v48DcmjqoxJ3rT2NCUSO/uKSJuDgBgv6b80a1r
	F8dpguyocyRgUN1tMp7Gb+Z4bG6oYUmoTFsVhoyY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c8adb54-f7214315-407e-4b54-84eb-b8405f98bf57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 637907b527ee12a768668148362d3c2d4d6e7571a9e2612fc1a2e671399dddbb
Date: Tue, 15 Mar 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647330384
