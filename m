Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008F57E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8765CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671354687;
	bh=tgSOEB6mmMAC5TqYeCDP0pYVTYASgdJNVMgm95ksuCY=;
	h=To:Subject:From:Date:From;
	b=ZooIt/fPsRHXJ5O+hBuaulWrxEd7ciwSfg+rGycsk+PlDTy1Q9o+d6dx8eDTWc7aJ
	 OPwJtHOs9Rz+NjoPhKEOQHAhljDsa/R23gKz7+b/mmrF5YE/TVOdJaXGgXdAI2mr4R
	 YqzCLSc6KrJ6tXpRaGivqSnTKI3YzF+jvHbBPPzkIt8q5PWwP/RyA3lBwjTl/JDiDT
	 8s453ck5jb4mXDwxsGenz1uqpHPDNFeT05ipDMH68wsFfmHqKm7+H2SqY63L837piI
	 KH3ZwRYESYa1w/nkU0gguJUtRpONIgpZWjD+F7ASXWFzEo+xRHyEKc1PJ/nZltLcZw
	 Dn+0+a2ZDPirg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A94EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135468739.31041.15764478310002835642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6332bf94fbdc1f7780b87a4d32f9ee0fe08b480c1fb81228a2199ac68f6f4aa3
Date: Sun, 18 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671354687
