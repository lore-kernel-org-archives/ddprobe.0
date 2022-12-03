Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D105B291E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EC5C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670106654;
	bh=6l9bk3CZSXAexj2K/5FNzqa46MadzrmfyfI074NHQW8=;
	h=To:Subject:From:Date:From;
	b=VPwMET0Q6l9b3M9ARn7sYNhan5fZAt3vJn2G8mEyR0ybMSsDFDIBXffDYM4PliC1Y
	 GNtxmxA2JMGFbgOWbmO26thyijfNbsRacae9D01d+hBtOlJZ8uc3UdhH4jRJ/LEinf
	 NLI9R6/6E9jQ33RH5f65lfFqd6I2KZEGJ4HGt84Udfoq6CpZwZ537aDgGETl2BAjAl
	 49TWk0mH08t4i0np/dFy3fmU7HEFCLPlbVYZ4kGvayjkItEB1E20vmDbYbJu9vB5Kh
	 z9Fw5RcFhmo7AZ1EQbaWwUB8omgSCVFSkHM8TXQIqL8aKuZJtbPAhIrbw/GxJaqmVa
	 /sm9trqPYPFzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A02C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167010665438.3078.10425759616695481042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5a8716f0fe784a4b753959a0de0907dd998e6eafeb7f3027e3fe8b8a5eaccc
Date: Sat, 03 Dec 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670106654
