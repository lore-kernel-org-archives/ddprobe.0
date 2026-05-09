Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3142628D
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778302054; cv=none; b=nQG5xg1PtZby0cfCagAEpYEd0tXxmF8vH0ys7UE44z2FjzV23EQFP4eM1CNCh/qdLVAM9VRcukavIXigk+zOOycjMBqHCIyBp1jjtQuNoN/GiOJwAS+8Ys85ZQY2Txs444a8HOZelSAv+xAoRYLo7oMfFMI3fz8Oiu1wWHs7cXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778302054; c=relaxed/simple;
	bh=kK8zD5yN2U7z/PsWh7Wyw01jitmv/NroTqem3maBSKY=;
	h=To:Subject:From:Message-Id:Date; b=YTk6kQfE5NQ/rw05cZyBBsy5T3gaIy9wLHZY1JXyWc5NvYQmycUxGPICvmzXxKniwZjM/r7QYnMXJsso7Z7XiMPDbVjZSHtFgbzDdS1eAsS/g4YQUMbWCJsHUKz+AyhlK0HZ1ok4pfFbkr+s4E0HlFNjWLD1queaH1PWnawJkbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK9tVNbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK9tVNbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAC2C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778302053;
	bh=kK8zD5yN2U7z/PsWh7Wyw01jitmv/NroTqem3maBSKY=;
	h=To:Subject:From:Date:From;
	b=DK9tVNbxbBhbRJ5ZeJe1GsR69/2JdUwYMMCdmNti29+T7WXWUbCm6X9+Co47by6oS
	 bPb0bVXUsS06jq7yL3ZBayONrorApzg5QOrS9vynW+rB2AoV7+jXoM5baEJ0mwzzzk
	 j43f1vjAV9JnqNcmial2WywZagCVjG77AhUBGgrHAFf5kXcr6ODuiAW5/8gcHcYXFB
	 GpbgefIIjMPL46eTaxdJ6eLk+p8USYz8S0eUzjsu5EOJ/O6tAVaoWVmtTwoFkpN6pu
	 kUiKYL5gYoqP3QAMy25YJGNj0rxmK62OMyDud9OXWhqkoIN22sfyc4M+DjeXY5BoEI
	 rdZaehtBtMq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13C1CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830205369.1088.10558777425095450886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d560daf153f4e30f4c3bdab60a24c6c6388c3997384227c3e04ddd580287449d
Date: Sat, 09 May 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778302053
