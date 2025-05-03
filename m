Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DB21DF98B
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746296994; cv=none; b=Rdf0X0Vodan/SHGfZ5lXFXXsW7BawxZhIxVT84nxUqyW5iNcDPGLd6Tl8oV8yonxKiapuvCnMaaBWnPIrwxRoeTkUu6zcWbc8MsOtr3QbdEM/Bk7JYjAFUDdWb1udsmWXOwaoUzW6SFs1MrVeOjs4SBIk/gmM01+GaFuXsFOqL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746296994; c=relaxed/simple;
	bh=h/pQ0wu6XjrCivFd0ii+xYdkv3ovN6Yo5+FG90pNRZs=;
	h=To:Subject:From:Message-Id:Date; b=VDvNKfwoRPSdl8laqtwGY6fRnLmw7i1W6gvv0GDkNO8YiaIPvfoqWOX1P/1mCIOMdl4z3jODvSimzce1aA80fGp3Cvqdjx39L81sgcyHZKKFGWJoW1SaEtORoXyR1Ss6QbMsVA5yxLMc5Uav7p9q69iTBvVTSOKhL9/yJuWN+H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGSwoApP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGSwoApP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A122AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746296993;
	bh=h/pQ0wu6XjrCivFd0ii+xYdkv3ovN6Yo5+FG90pNRZs=;
	h=To:Subject:From:Date:From;
	b=DGSwoApPxipgGzr5f3+LZ8YSz+B4r+b47z0Wkmupkh1SJ25gk7gaYfq8eaCpfKalY
	 +An0PNcY5E/omSkVt9HoI/Nad/yNZf7mhbUL0gwlp5Lx9HobVAnuI73Vx/aaYr9cvc
	 symjuMAcNGkHOL2f+zor9qvZ3tC75hz+k4SzyCxpVHrZmvzJ3Taw0WHcUsA5mvxkrf
	 nIoi/XCYniVI14HWYK2pO/nJ/7r907MZa+xbhnSTPbKjFBirxAZLYuzVzf6SToRKeT
	 j6pbMs2v9fFdEt4r0x5UKF9AjbwXB9gGLv7JIxk1F3FNZ1i9Or4t49w1C8lmmT9reu
	 7gW+9zcQPY1hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931AFC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629699357.2984.13448886540440137080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd48cda9286c7be9ed759422ad17323c699c69a58f72ba911f44a50c36388d41
Date: Sat, 03 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746296993
