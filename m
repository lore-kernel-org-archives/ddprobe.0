Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047CD43F8DE
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784904035; cv=none; b=kM4lxtb26KcN4UZJ62OonzEXw4Ov8H4oUoCsRfmHed/kB6Dx1nzRH15H0II/y/NxdQzFNV3Ih5Shgq968Y/SZdsxaxuzs0HI+RrZtzJA6Wjx5rMgLrr5pM7fys5mV5S1Am/lRhKhTxb5jdKcEvPlfSupvwvrfmMLgQtYQ7bRr4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784904035; c=relaxed/simple;
	bh=65DGNq4NGyP2kKiOXvhbe6VInNom3Uw2Nbb8q3dswDI=;
	h=To:Subject:From:Message-Id:Date; b=LCBQ2SE9whpyCl07xvwVjjQwVKhWCyvR2hb1Mkwed3LxizLDt28ehuoJVW8+WGoW3333hZgfgT5nCPtf2pwCL89pOacJaqdxqxowfAfWIZDTKMuQ5Jgpvc3vt0/PRrlP1by7weNY8JxEIOVIUyJuU586jP9A92DjVjJa9BP9G4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCHELB5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCHELB5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F5EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784904033;
	bh=65DGNq4NGyP2kKiOXvhbe6VInNom3Uw2Nbb8q3dswDI=;
	h=To:Subject:From:Date:From;
	b=OCHELB5UUTVzWvMq0ptw6tGe49EskAb79sOs7QvSy4hTvvGb+daP57wh/7XRrHEDU
	 kd+D35NNv2CAIjWPRRH2MOwgRAtQXrxS1WOMp/RyuN2ne01IucIIx17rM0tkwTtKyw
	 gCaUaDbWBHDo3cwxJXIJbRZvY+vF1qHatbsUXgr1BoiSC/cSCb/+c3HqSV5+kjocvA
	 eY9yeQ8S73dcJ8H/SrV/G2mxRO7bu5p0Hl8J4WJsEyD3kPD/D4pRb1C0h11FBUwvN5
	 knzBFjtfx/DysRKtLCI0WwGO1PdRDTSScj9nSBO8Qm9iKYn195sZPvr9fsifiRAcTk
	 96J+zTQkx6bHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CEBC531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490403373.19921.5670183467240617042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d225433f3596ff0ee27db99fc71360d50a625f549615e101c7fa653871e6faeb
Date: Fri, 24 Jul 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784904033
