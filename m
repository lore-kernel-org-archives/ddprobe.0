Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED74D7C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D21AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661582452;
	bh=2P8s4Sd+pwE/NfDON16ESzRqfPmPQxgKTwaV7EVfsHg=;
	h=To:Subject:From:Date:From;
	b=DJsaEqU8oq4U956a4i/mN74LodV9Kp1af1TcK9lMoMyewvgFIiiQHTRzzlkdCehWQ
	 1D1SpvjRwnO0X1qRtedGaqh51Nh/rrkRU2FMFZ8JNkl41LMCtNb8pxI45s9N0g8Rzk
	 KoXAb009W98SRiWfT/yOJvUP6xNaILKd/1L5r5FqZZEWi96b4bVjWeX5Ub9NSiveCO
	 7TUyF4rFr6XJR+irLrVCboflZsUK2B1otYYvZVknZFFAueNhYXTCi40Kt8kPr3FRVc
	 HQsopoDeK44DJZ6/ce/zzhHatVmObHqSpxglLRoINIzJvg1G1FeNyNeTFXRDL1QhDr
	 PRx0RSEfVPvwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600B7C0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158245234.24821.8268451328173183153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d312f8bab1ed7ac73722415163915bef765ef64cd20fe94189539b798ad8d70
Date: Sat, 27 Aug 2022 06:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661582452
