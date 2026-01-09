Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABD028C874
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767964434; cv=none; b=qY/gVhAYy5Df00jDTNLlLiq+N5y5cNLtvyASsawhG1LJoOjg8vhvWWgeYPqV3JPEZ/+kWWwhhnpV2qt/dKiqfdfsCU9vZ2zk5/p19VEoeivm+4cEtK84QC1WjaReXUAMpr7gr4bCPQvqqfOWYFJ0FKKj0yys065wGAb9C96pU6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767964434; c=relaxed/simple;
	bh=Ggdfez1wxyGCRTli9spYa9HsaaNB8FYPKdxLpTMz5w8=;
	h=To:Subject:From:Message-Id:Date; b=Y9XLoccMQ1NtCU2UVd4oR+TIZVgajGdaGh+HThQTUyxdXEwLqUQSxIFTXGU5dPE7+Y+vNwb1YZ7vFFs28VtEKBXtO9/9BXoKK6XhK3X2zyEaUkmzNxrXOnb0r88YUE1MHDuIumecgHlpdlwtmN+tbZDWUuZVzV9QdntoP+8TQDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKgPLiEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKgPLiEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E50FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767964433;
	bh=Ggdfez1wxyGCRTli9spYa9HsaaNB8FYPKdxLpTMz5w8=;
	h=To:Subject:From:Date:From;
	b=vKgPLiEsia9Yccow720+9AusZw3Tix8FMeDPSHlm7EmDX3dtxaAOTOzs+D28Y+SSs
	 T3mGb/i5E6gOXTAWWzDXG+00L5MziYCCM7CYh/jXuD64b0as3BMKeg/MXbWBZDHkLh
	 Tekb+zNsX98zauasc8/lJhxcyemAk6VSPfCAvAkaQZJTvT22u+dSGeiiyzySVPuIWw
	 zcI8fgclFbF0d17rn9Ba4ePn+Yuami3aUUDP1u6I/a1HNO5/7bdcCdG5r2tMqyOaLO
	 0tICCH7mQQUqVhJL6QfebXjsgIodKzGXaY/20Jk5lk4YmOb0NRpoxOltCqCsUNzPqx
	 UdFNr9WV0QjRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F646D1A61D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796443357.27286.7810499949202378703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb472f59dec97cd82268411b483735ade0c8c2ae062bfaed7000b2d4e350683
Date: Fri, 09 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767964433
