Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95841FB6
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 06:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DE0C433C9
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 06:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688192048;
	bh=oEfuIubsJvq6doR7n/QrtsIDwZ9AE5HipbzIgI+ZeXc=;
	h=To:Subject:From:Date:From;
	b=ulrPP4qSBycNm96sE/zx+r3cNIVY09JekOy6PVEP1DX4kWt0Rs4T31Jzl8OW6ARjF
	 WJ4azXqv7kbfWaAN7CrNhaItDen++yS7meMM8Mcdp8luGck+BqdKEQIf8evRHKYfDS
	 zYydHx1fGLXoI53vJ4xZGFAsTdChuUsxSs1gH/psc2EP9oIO7w7BDKSkyib3IkK0As
	 Ahs3Fjk2oZdAR4idqmk5aA0qIDUmlPbo+/wdp+MnMmSTXWStIFSz8QBwOjtTkLS1Ex
	 2GJE8BPBIVXSFB1SqivZWou+4UIe4SuRZh8XtupyIPrXOy4DXgBRk4afyfrSOmH0qW
	 nwSSR3RPs+FkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF034EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 06:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168819204873.24651.16439528330885927173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da26501f84bb39feb261fb7ea25c9588e8ceed49dfeccb4b4c14cc85d17b3b0
Date: Sat, 01 Jul 2023 06:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688192048
