Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C4E4406
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F387C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668429654;
	bh=lU1iLzRoNFCZYEkodztrmOLk1FWBVa2DSiRFmGIpnzA=;
	h=To:Subject:From:Date:From;
	b=a3MGp0oEdgKickJLB0nTHC4+R3PwdNSclI9rTANypmCKCAT6LykHhTrxQJ/XhdR3n
	 BYEawK663LmmcNojWrsPn3ZdjfzdlzaX3eNa1AirBV1vUHGMIvZdg+695Y758i0Vr2
	 HQeOQETLNjT4CNscCvWB9VzaLIclPZgkNntMcBEeJESEtsG3PwMcapWheAUGLEerLh
	 Zmg23/GSN33hXl6BYSjnIEPLf5KXLNoJqfEeCwfqZRLF075vrZ5HoA87vw69Vjx2MY
	 18X49EhDLPCTQrT2De+/gL+YFkpVqvF9fDza+YKHC/cjcOgna5Hp/LbtVMVrXK+7pU
	 ZJ44gvO34gXIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FBBC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842965434.4690.12772656904637643766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a34863361072254adc2900c7bb1dec2bd28fa2f2d2a9567722bf6787fe387a1
Date: Mon, 14 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668429654
