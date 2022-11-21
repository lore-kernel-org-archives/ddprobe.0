Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7A533EC
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F8DBC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669071654;
	bh=EuJ0SRUEOh0Xs8leZGrZzcriOZyRLU3TkkM0WOMHA2c=;
	h=To:Subject:From:Date:From;
	b=jJId1+vNpdYme84ZneSETVgDzhwzi5LFk13ySgz+S9k57qmGZfCOOVo3IiVVi6ANQ
	 d5gHa9OhtcWVVedrMRKePsJ3Dlc6wevpuVXLRiDXawMckbwmqQFUpEIwoaZIfVoXpi
	 Od5+gl4cCgwCrSGMMJ5DrZKEQXahp3a4v477nhz92uFmElu9suhxSePqqo2K7UwuCw
	 eQoFHQ/qOl7rpk/XESQ6ncdNn4Yp78VmdqJDub7MNPQjSZ7nl/q/ETMTwIl1DO0W5T
	 8zffoxduOGY4usj0a2PPdSyJFt6R9+FHtCDqgvN/R6Owp2xS3uj0EUU1y0Z2GdnIEJ
	 Zljcqx0vCEH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F14EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907165431.13420.5665868896384347947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847fb401f48d05cf97d294728ca46698a27360ee86578d948a6296469bd427cb
Date: Mon, 21 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669071654
