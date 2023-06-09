Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB3212B9A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 09:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB170C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 09:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686303905;
	bh=YBexDyCOk+PGWCImSz+9SIMjflHX4fcHQRzwobYd460=;
	h=To:Subject:From:Date:From;
	b=Lbji1tEtVpYlh11Yvr2N/5eES0ilx3OLpiI0acdOMeB7OUyv/RMPbas/7u+H1c5Ow
	 //eLAjmiG7qAvV/ddqZtwVgtHeoNLXam4GOzDQmQR5xvbOgYyHyky6TseHc2STuQ6g
	 JlSW+rIZ0mjPraliUy8jxc3I4WqeXfDWhkgGBEskxxyTcraQpfQtgvqd2oEd9Vri8X
	 6T7ho9hNLIKuMv8qNQjc7OSP5YS8/6BGhjkOa5gayfbEy98LGAYHFI5Xi27cciI/vI
	 BuGP0ERQJF73OSVfxFBumBXsk8QK+z3q4d0wHz5DCeTQ39ja3m8bvfyeanr4uer2MA
	 djJ5ufehK5xtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF80BC7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 09:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168630390577.18212.1983522217741198440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77db57100bd90c190df16b1dab3926c2915a84019a66b68c939f777803e17ba
Date: Fri, 09 Jun 2023 09:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686303905
