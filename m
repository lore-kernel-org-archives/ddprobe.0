Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC6E2F24
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743AAC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663266653;
	bh=Knijw3FJ0jQziz5gsUZXUlJBIgFDaK8doy9IZl+MPM4=;
	h=To:Subject:From:Date:From;
	b=C5IQ4M/BUyFVEaV+PVhcPNnfUeyrr/FUXnYD9gnxixoNBbEIeF1JzqwUbrLq3dPc+
	 VWsvcaDMHu3+p/mfBGYatZlv116SwU9dk+5qbuOJ7DjUg6I0+xYzBsrcamRlcr7KiT
	 Ids8Y0bc2agZNifORQXvg2AddV8akuFOyi7hezsS/UnpS3txkwJ2fevfsVxgheGK6Y
	 nwz2XtBidE0MAObtSN0zVtdM78PQ8TQUjSGHycSG0nyeIqTbvidACjq8LyxIPdycV9
	 D5wnQRGGvCmKslTim0cZ3MNLNNN0FZbkirE+pkFVsuittPADSb/bZ1gmIAEmWWLmtu
	 eppgK594k5pRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA97ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166326665336.5895.16293264475904125115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27543bcdda6c6435d0391d9a1478dad36ccbe67a181374ad433a9460b0231380
Date: Thu, 15 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663266653
