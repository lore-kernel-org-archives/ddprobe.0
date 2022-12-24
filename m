Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03F3322E
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED08C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671898887;
	bh=AeNc4T+H/OnJaenCCV/qmIBw3u9QMdsYDbOEJwEspwM=;
	h=To:Subject:From:Date:From;
	b=AA22SbdWrY23+aTNt6dRsbwqTIFYpkFqdVJ2NFJQBlLApb83rmyCoYjYzo7LYLm22
	 NwGwMUrX2vgCtIVPClBfNBnr6+sJArjjyn3Bj4HMfaub9ZNrskUmeL7PMTJibsgaEE
	 OcbUtjiQsY8wKearY4wbtD6bVijFZ3bQ3ljlknQLzbcDAw6AHVplmlI0WsFcxVGKZN
	 kvvP3OByr+Bd+SMbWAkJT2PtQnplWUzceJZVbrT50wBBEBFoJcVFH7SzGUZTylA+OQ
	 heIUCkt3HoDnBcw5Vte6RDRwoi1nvMzxqgOObqHd+LJaTEb574yGcYlKPdu5Hn4n33
	 Ucjzcbqy6bOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CE3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189888740.30450.555696680571807203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d5e44cacc36887a64ae60e7faa36cdfa189ddc5fceba5a74c65a3f45911de8
Date: Sat, 24 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671898887
