Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B02715ADB4
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732192554; cv=none; b=VEUpUDjtdd2Ly91kDLQrvcnlvXeRSAz7JkB0p6E1jHCpF+q0miXiGJnzLniV7eofcxBBc8Ys+/A/3c2Oi5dq9RYAwVoOxKJbqRiiWVrQhG60bLEe7zmdZoaLiM2fZx/Z9N4h/BVK+ON3lVjesL08M+J8vsL1Vblc9fNy7YYORUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732192554; c=relaxed/simple;
	bh=RJ7QjVPI3d40Nx43JA5MEqpxuRIVdktUpuohPSJHutc=;
	h=To:Subject:From:Message-Id:Date; b=CCacPgSt6d/m8kfOU8wdkREKwcT6Rs2TqwjfSbZ/CzYdvpfadA66w8uUN8d9K3nP/gAy6Cbvp32TIP93lyPktVDJh4C8qI+zyJtyW1LYtaNn6b1T0L3Pw7i6TsaJQHaH0G1KRG3Z1KJlJSv8Lkb9lTqQKS4RAoKjfL7S/7+QcYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxJjaR8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxJjaR8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEC4C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732192553;
	bh=RJ7QjVPI3d40Nx43JA5MEqpxuRIVdktUpuohPSJHutc=;
	h=To:Subject:From:Date:From;
	b=nxJjaR8wseo71LOfhOfZqtVawd+eMIMNH4lNrsAT9sZjP5yhOt8GkPoEOj0FSzPk0
	 7tQWs7z0kZx6NOpZVoidSjYrbh+zLhee6Bt09CwxWYTkqKnLaErqGgmaLD7Vaa0GSR
	 41wr9P1OJUUjbjQb+pOk+rgCw9YHJfXoBwJ/Hx9joR3sECldjXgCtDwT7gr9v6Cmqv
	 iUg15gmpZ2cPpMrXW47veyi44ZRncQBHj3v0gs/nriV33jamSnEqrm2yyWNvhoL4V4
	 WppMNZ8fD3TFHjfeAXyZN/VJC7XOYs1/4/CmBZwLNxDEsRkluJzIdRMCYOHyVWeRUD
	 ygjZKEVV7ER4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A231ED6ED1E
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173219255365.9075.8507402888677571929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdec219589b39563632531fe9919c6911da0529a414de19f5fd5148c52d8c8b0
Date: Thu, 21 Nov 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732192553
