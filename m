Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DFD1367
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A0AC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670400054;
	bh=PAxWTMiqdPpA7Qunf6y1Zr5IF+cv4d1DB570rmnLkz0=;
	h=To:Subject:From:Date:From;
	b=jgfC8ILm4CWpUa+WZLAON+hG+7321hGRsZ/0WP4UffDaBTWPBBgNXb70k9JSOc4Lp
	 Fg1NUYxiTGvWIGNIVaXzgryLEjZj32sVrWgM/c6REb+CE4Dc+BV92DrTdJ6IFmgUgv
	 SiRZI60gaKoYesFE5pJDs4MSwqlLyt6DSBR4ENeLSodQYO/PGnQ9Sat8/FinkX7TFY
	 0+2dJHKNmNOJG/9F0MG29G7KECRW4gwgcPKiox+jRG9Xvm4pxccPDTAgnIIupLJdLa
	 JudROxDNGr9KyVJhqnd7wcEsL/a7T6DQg26xzcLcuW7hCtZrV+6Y9LxfsEOxMWwJG9
	 /wEb1Y0YAmxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59290C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040005435.3237.7756501409992468894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176307688943048859a6c17e8dd5494008f6b75faeb410f1ed82b8f3aeed6c7d
Date: Wed, 07 Dec 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670400054
