Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC09D3205
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B383C433B5
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665877853;
	bh=cBo6+fPcqmwEWmdWtRfG4+PETBKUD2Oo7gB+hSwayr4=;
	h=To:Subject:From:Date:From;
	b=GXN61hTEb9f4jUFaFpRdn9VclSBI1WWUTdnPuGCXZpt/Xpuiy/Ms1gLkrKEh+1Z8V
	 cEWsIE30eiqzzu2SFe4x3+CRDIfKFhNoKJV4oVroMeAnKA1+o5pJ06qlMCQUfv/f8D
	 ruPELFYkFax3lmINMsh1yjTGQMGBbYX0ejQ4J7YYIM7cPGJHFA7ethKRBtqNkHZ2zQ
	 IJ0Ns6yo4xJ/Jppa68678ozj/07keUVy0DmjclpGXEtLrZ997XDMr8G6Kcd2+NOd/r
	 e8WtY3w81r+USWf/9zLKymPFxj032O4qcwHszjwt3cSpKeArbLYQ3WxCV2MxJ7MPFo
	 r5awh00yOFBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538C4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166587785331.15184.2732231434301509972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac438e339960b536a85084fadcd33ee0e2361ac7ec14f861146e0deb266332b
Date: Sat, 15 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665877853
