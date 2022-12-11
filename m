Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21E52912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84AAFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670785287;
	bh=Vy/98yT5VUqIPY5uPs7sYj0p5NN1qLq5aZUCMel18XY=;
	h=To:Subject:From:Date:From;
	b=IhSbk94DflRi5BXYbf8xNJ8VIdB7vhHk4gxd7OcMFS39fDkDtwdP98LypHzeM3ErX
	 +6ghJ5xvGKNiCFHcBYhjW/sujyNWB0bcIO0xM9vzeW9tY7lyibljSeaXD7nV3btxdR
	 j0G/m+iD2okQMLDWpKb0NLM8koTlXPaeuhWcQZvBmxtIuEM5xBf0lv9lWcIOskVrVW
	 rPDaWDKwd2MNRAtJ+4XWJeiFM82DX2fUEr95sF0rbZADoTMUZCClVGyUstwB722VJw
	 x/TRdWJP40FUtk51in97UTqb4e05YGggsVxbPExh+HeRw4O3oxNvdqKgEChCeAn4rI
	 44QEd114oxuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F10C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078528741.5224.2049948777400224552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c961e52cf39f778721072561059f97fdd4d44cc4c4996c9219468f9a1d2eeda5
Date: Sun, 11 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670785287
