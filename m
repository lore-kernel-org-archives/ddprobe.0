Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB87A7C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7456AC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670190654;
	bh=kvjU38op1RugHLHv4cMNECOqGXwRIRlss5JKDlLNOeA=;
	h=To:Subject:From:Date:From;
	b=HwdErC5oVUbUd6840bYokCBSKdOOQ+zqBFu5I1D1GmvipS86DMpDCdYVYX4RQ0Te6
	 7fAq4LxB/unEBp1QxzPuESue0nB42sFc0TTHRHGotHceA3Bu4vA+g+vgXAJw4z3bmh
	 bIE9M4mSqpjna50CJeulurZBS8pPsUJauAnVGvLMmKX51z+AFtgnU816/cgO6NSWhj
	 e3RdTBuyP+vkndPg/YQubBZXwNDjJ+CY0BU4N8/cdxi71neYQ/P6QMVDH/ZGDPVCRP
	 RgdlSUz9iSE11Alm0qopCWFeTlbcyBISBOUH/Eh9rE55n7YPHM8KxGtXhXnqE4HVJN
	 n0IaoJlXDGxfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55865C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167019065433.25674.8475822149060702527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7eb5d25571eba2615cd090bcc91275e2aa86fd1bf007004b4f407fd460a357
Date: Sun, 04 Dec 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670190654
