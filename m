Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D6734DCE4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786300834; cv=none; b=GXwNkWrM0BHG3ktmR8VyIV+JqZ9/Fb/BBy87ElhhZy0boq6qYuY8sF6qG3fWWijGqYJ1Jln7i1n8+4HRL7qcGc+uDcBGt9SJcpZqhweE9un1LerL2BdrVA6SFC8/qmcsh4YgmwUEfn9OnxYFbf73LpSk7KnvBgkJYRnTJa2DKWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786300834; c=relaxed/simple;
	bh=K0bskweJP99SppDhV3/RZSpWoY+j9Beu8y4pi7H/4Fg=;
	h=To:Subject:From:Message-Id:Date; b=FAqYCrhQo33OaNMKl2qIVaAhgS3au3LEdUmFky1Tf3Hm2kW1q7fGk6O6+v30/AFtVxY/XyplCjcNfoP1IahU1pnMPYUGJtIeJQM88n2uxSlI47sGMG4hIdpeEWEAJb8oq9N99zIVrwoii+ObJo0+OPEIdTth4i7ItDAE47WJRL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wad2+Ydo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wad2+Ydo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD43BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786300833;
	bh=K0bskweJP99SppDhV3/RZSpWoY+j9Beu8y4pi7H/4Fg=;
	h=To:Subject:From:Date:From;
	b=Wad2+YdoLl3Qi/7CUrE4+ubSw2aSNnvw3TBH2FtRkeySKxaoSoEydUeeW6Mf6DYZf
	 pXwNo0AiaCIbc0MSI/U4L7wqTmD4Lu720PU65GJzt4cXfaLBjnThqCm7lbUeoNbISv
	 Zk8xLdGyoVncZaSGaMaVtebIBnOi0t1ICAAeznsJJuiqfgXGyzJH7DGKWdDBvs6kJx
	 wagWMLyzWcPUivwUfszQE0Mj5riNGNPAS438oe6zLLNLfnSZ/v2EpcGoHOEbM5J49u
	 hrFcs3u2R2pqY+0Rqp+bdcwL8/gG9tCMs3SyqF2LY3YZtJWkDnCmLtfLKP+zz+fuUN
	 C/eSAM9yS26yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A1C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630083368.19083.15189837318321290256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7236331a7a6c1b80ab83cf1a89d88d068f57d512635bcd1b67eefe6bed3e0bd0
Date: Sun, 09 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786300833
