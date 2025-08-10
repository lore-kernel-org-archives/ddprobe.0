Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F222CAB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754786394; cv=none; b=pIy5NcmJ1PlBxtdlJiY4py0tqeKVf8wU+ajGiUyD4M61x5xhFIgTTj1/Do3y8YgmrWpPO3FeeaMa18xI0mbALgoMYEmVoG6ce6SqIRMpwPCwPVVAoLjT6IBDZWkxDriFLPYwhGEUYTdY9t0pe39lSFq6xLT5sXUt9XxQ1hMXj8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754786394; c=relaxed/simple;
	bh=5/VXiSj0LnpveHnC7NlgzYVTMl8ccIyWTYAryMsDNHI=;
	h=To:Subject:From:Message-Id:Date; b=FqjYJ+jB40X/ZfhMOG2d2h3s977RKyMDn1I6QgZGM4sQ1nN20nSNnvusJEiSW8Td97kKGI6Y3atAP/6ppJL1BK0u3s6m61lEfzhODVxZEL+gSaFn9gXByonZ/cFYzQ/q7fDUxWFoxCU9I4KSjSW8M+3j9ghoZ4e/wFlx+6PDkDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrWypLe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrWypLe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754786393;
	bh=5/VXiSj0LnpveHnC7NlgzYVTMl8ccIyWTYAryMsDNHI=;
	h=To:Subject:From:Date:From;
	b=SrWypLe3EQ0uNoOFNS3HAQ2mOgd8i7zouTawO20ENM4cD+s1Vp9T6zEUOX00Itx9c
	 j+QwD1olbF3xreKaQ7KLYks6WelJTCEkgOH7X5LHQvOtvB8dNYGvLBaKPFCPS5dn8u
	 1y6TYYi+LeZo/jiNlEn4PGzjGD9uEZecpdz5APioOuDmADhTXuOLyF11xK1VFMyMSd
	 +yTSV4bOXNUDY94EgDwzFU/B2VfykkZSO711A2DQ+SbHfMk4j2Lt5u5xz6oPi4vRIP
	 WRVqII7AnWdDDIYkhhud43u8CwVI0oa2DPJXRTzDnXGx5iEH654jojtPO790uXV/X1
	 oSFgxv7Xwqdsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378EC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478639357.31950.3839507869537803666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51922c15a7fe92a93259706a2a07181b8663b6709ed467fab5af101f5c2604e3
Date: Sun, 10 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754786393
