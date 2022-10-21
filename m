Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039E26AB5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B34FC433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666395653;
	bh=QgOupfgoFUWYSj92Z9VVKAujl7sti5nOEKfFDiTK8/8=;
	h=To:Subject:From:Date:From;
	b=SCsNSJd6Dos0k1Yk/NJa2B+QSIFNbi+m2r1DHu79LMxQCkOo2RUPsgQEL9Gn/lWjo
	 IHx3zr1NezNCDlrznuG/H1P0t2FTUE498cMyzt6F9YoOUvBM88XFRpJml/jzQW54/u
	 eZRPBGv/XXYDSrw8gPzOObVi19CkKyMCld8keqXZfIF+VQ+evdY1BFJvTIdBKvmUyI
	 tDI5KVXMI5oHvNDnNOx8DAVs8CRhStjBoFQ97Uo3CDhp4mQm8TP1e0us7ez1rCcsaC
	 o9wptfTaR9Kz93HB88nw/CR3oqo/8oE5oh3iNd1NF/AlsNTEQbytJNa0xm+Gs6d5E+
	 /ea2PG/l0gfyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DEA3C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639565344.693.7875389679649635252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28194226ef6334b8054dc55c09b46ad602782901a9274a20de1ade6b2e490bc4
Date: Fri, 21 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666395653
