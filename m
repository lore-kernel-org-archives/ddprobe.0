Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF70C2D7812
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777671453; cv=none; b=in18E43vRqbs8GfdMFIhwIMfQKZ1pNTvEG74quZOVJ705/TleXaHEcTY+464+vTOILq2kMdeSRz5OsKqVg0toUcmX2hRYeUIA4jTNzcKHxanczObOjQTtlN9FTbnpBYsselWt1O0vTiUZMP5IkSGfvu35ZNF14F5ccbJgnYcgI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777671453; c=relaxed/simple;
	bh=8bx1JNKDLm2iTGp9YtqF+YDs0ZUA0lqMvd4XuUo5Fao=;
	h=To:Subject:From:Message-Id:Date; b=l0XVTM0hWSfbRNc+Y04P9GhPCldZ3ftukdy4A4YtZ8AI81YnwsxGh85P7RzlJd2dYr27h97DFZYUdT7jxPAoDx/sfxDWkIRbupDJ0WKSrFe21NySv9H1UCqOYq7iVVkRoyNUvOM14B/tM/6P3T3+FSh9x7ks6SHMbP4+dxgMk/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPYoSWAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPYoSWAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7C5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777671453;
	bh=8bx1JNKDLm2iTGp9YtqF+YDs0ZUA0lqMvd4XuUo5Fao=;
	h=To:Subject:From:Date:From;
	b=bPYoSWAbogV3qZ2ujPknngNTj+C+MnlIN2jTR/KmSUR/r1hPMAjuFu2/lMaJaQ2jV
	 U+orqbkp1k29iuN8Fe4nYLHzHSn0j7qmlTEv1wz0I7pyGOUku+PptwkjHYgHUewH/1
	 Oio9bVTnljhWCf74AhT0Ns2Eiz1ZF64KIPymb0Va5YGVxQrkdwj8xsSDJMpg32oMtn
	 qOQz7cRyXM/62zIDuqsHJZ1g5yoZ/veq7kDj+DpU35ua2vQ8SnFChDD1xlIze2KvVr
	 0D9zVpEcMJvCvlnLuaMiS+hVfoj4e+Gg6d30vdms/kRZG3QfhmZa0Hk1lVJydA++K2
	 4M1rT9s3naMdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7BFCD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767145368.30348.183881851552874795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98071806397a6de1eea28e2434f0b6be4aa64e11c1e1908493904c650dd591d
Date: Fri, 01 May 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777671453
