Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217F21094B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHqLsg6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F6DC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702023496;
	bh=ymUziLp/VMVN5+opuxCH4kpD60gn53/H63B9WsT+N0s=;
	h=To:Subject:From:Date:From;
	b=HHqLsg6lnDOLDJJYC8ooPw4V9sQQ4V48SNdKKFzCQZYI0TQKMnq61R6TEATITbaqN
	 Cp/v8abbKGCeUD9U5+ffQrnFc136s8pd1BqD6nhekgH/jhkDtXM/iQOozAZT6FmQkv
	 JNlxM3G5qkqT+dwBrT/GTgRzh2PeUULdCxkW7jsgfXaenRxtWDijzl1EXB1wvdtzI5
	 W6Mz+AEDGJ1boo2a/dwKAGZsXayJgPAUJ6PooVzAOt8IvDcJ7Ax4U13rbTBg/Iagy9
	 69mf28OFjnUm4pRvHLsF3dvmphrpCemegLTI7EmhD1qr/WqHm1Vibv/zNwLxM0/3DQ
	 RZnR8JiwQ0FEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD5BC4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170202349637.21674.12262964809242814655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688253e9550dd83e6d3e23391915df7df84ff8fba58a8dee23202a01396ea6c7
Date: Fri, 08 Dec 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702023496
