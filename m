Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84C1288509
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746730793; cv=none; b=CRyxsJoGBuv74sn7bWU6diOZODxQYs1paNMTw1jwq/Yo3dFIwszsJtlMnVLl/KupeB0CMqTGpUjPzBTCY5owNswSILEwZD81okpuJya3E2+pB1e7D3HQ4lz1OPHhTJh0q0mRtc3hbe4g5PFmD0p8Gkfx1BcVTA+Q+h/OMVCrfbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746730793; c=relaxed/simple;
	bh=Mz2bVq5fB6HenPFvaZAux5+27o2bWuAfd4nn91syisI=;
	h=To:Subject:From:Message-Id:Date; b=INmahFbXsFyuqs3NcaHq1+572h0Cpr+agDwpK7dN7sj6+iy25rTuXdOcxkN7npM1gvwLYKnToXUQqZqBQgF2dx0aXplShUxKo8VKYPCI6q99g36aJpiZVgd6Z9CSuC5XGT+qsatVQCj9pvQYvL6nVEz47miQzbqMFssT/O0N6uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJG/xkpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJG/xkpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5177C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746730793;
	bh=Mz2bVq5fB6HenPFvaZAux5+27o2bWuAfd4nn91syisI=;
	h=To:Subject:From:Date:From;
	b=gJG/xkpCdAhZ2krRdYDyIlaGNQq0aw2/FwkO2ySS1y3iUC286wad3tOA8vH+/Zooa
	 XVv/hpHK8SBuQc0f8M39tSu13avdpmuTay1Z5L9WHnQ0Xmyl/KqYnxJWS2AEcKnWT/
	 jbGC1XAC0csLuVALuHKLh7mPw7mczZ3LmF5ee/kofjQtK0GjOgcm+62Wkcm+BQqSuP
	 lTmNGj6b/XctFZRzvRMx35hc5Av5nwOo2xNHNM63VMqTXEBCInDiMtKEP9v99JdOJd
	 U6poeASS3sDuTT/NnP6Dx1jLOI/9ptPSOlppXfizAGqcokqoKrwywqbM9Ib7/R2RH6
	 sj00rX6VB5s0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933FAC3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673079358.5658.651817286649599415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeccebd4708beb42b63b3886cd43309638a9d52aad17e11186946e284f13a00e
Date: Thu, 08 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746730793
