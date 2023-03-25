Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE5D7F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 06:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD28C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 06:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679726525;
	bh=JqAF7JVDnTRFZfxoZQdrXsFtAYKunuHxu2bRC2eRZT4=;
	h=To:Subject:From:Date:From;
	b=beHzJTh02kmr/KlN5TzwGy0fGph2sVh3NiV9NmqE05nK7dzLvqC1So4rwaID1u71S
	 zpqjl7FumPGtwzgdX02/a/8FydVvVz/E3FMI+DqSrudClM8aE6zZMLc0agv6OpoIJ6
	 5b61kPCG9G1SE2xpX1Xi/kUAFGh7Spp9DRfOZ/aP/qKjeNNUIWUvuy5NkCJ5WAJ2VO
	 ytYNEszyRt4NYDVoQCnJ51gPlSkoXzBYeJ2Gr8XH4UJr2zvZwOiMy+kTZGD2bRQScY
	 7P2aVYSF30OnvMsA8nQ0N1e1HEbKxZyXY0vpaldBtt0kNJPBnGflc1hNqjqVtGiqAY
	 nr0caWQzJ1FIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF374C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 06:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167972652577.28151.6063141854773223384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b2d208dcbb9fdc78518f0852211d9701ea8b5cc4c82f5ad2bbfd5595727af0
Date: Sat, 25 Mar 2023 06:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679726525
