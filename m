Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9D35C613
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777083454; cv=none; b=KWF8JL5Gwv1Cmymew6S2UXMa80mUGYVEJ1UFO27h6VEPFZeayKSOyUahRD1Z3ZOT6S+iRzoU+3teKGmCQmKOYf9QCOC1iw4wJLRjktl+4yPu2ptDA0SR6GjtYFrRAqlH6Ig701WPMj+No0Y3A7F6N9uggl+S5LRcfvjArWA4N+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777083454; c=relaxed/simple;
	bh=/f6GnGR48nu1NBZRJbt5SDEWG/HIH2awyxyZbPLdCCU=;
	h=To:Subject:From:Message-Id:Date; b=VPHti6idFUA9Cmsa+E+0nwXTT7aFmuKBxU8IkmdDPANTjvbdNMP/vOebihqlilQnDPZAtT2l1ZAzN53huXdtiyvR7NFZUrPYl/FgMir0VrQ83Xk5Vh2eJGS74VHtqraJaH2Ld+yAVXWQZGFyYhOVfbiRoL3m9gAi7Hme2iWmZ1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rh5zVq/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rh5zVq/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5DAC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777083453;
	bh=/f6GnGR48nu1NBZRJbt5SDEWG/HIH2awyxyZbPLdCCU=;
	h=To:Subject:From:Date:From;
	b=rh5zVq/3Klk491xjb1EmeV1r4Jm++gh0t809DyP3r1tRerfpFcOCOtI/AJNjJkDNG
	 pXpxBJE/T1auFQ/SJ7GG/veJJYgI0ZRLkq5qEDjb4wpFVC6z80CvxiOZRpPl8GfNRM
	 vBbWUUSlPc6C7+Dh1ll4e7SHl/A0f+jrMYCQQNqgr/fuDebkOnAtT5pTd9PPp2c+Tw
	 CWvnYVEW+6hFfaZnh/WA2mWnHJwXkKJEcYx9qEw4FDKwjlfzH4xDYcHQ+NpklYFUCh
	 HN5mg71EP7jy1KPk+/9vjAePUVCUjk9tSEf3+lf4zFvauu7MiDRWyAEMWLoWTHA9IX
	 iuYML79K+01uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1A3FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708345368.14041.6332590459550063422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba7fbd1d3172d935fa60c69f5fafa78bab8e4d9b9bcfa8eb3157e82d4915071
Date: Sat, 25 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777083453
