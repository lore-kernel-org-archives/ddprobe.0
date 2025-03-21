Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387973C47B
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742564994; cv=none; b=BTDe4iVBinkQWVSSRU9++WfCm3+LZAGYkxbZYtP7+EqdsWbadnfxH5V19GVzhA7G8XU1Nfj551Z2/QiQFLCgGyDxNKsRIXuWnXCwUOB9oAC2lefEH0yKidVYFEhUPftgpjmdxcusTrna7dany5tboz5wcCWBMcpHD1e0EtKGpAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742564994; c=relaxed/simple;
	bh=yrGVPi/UVeiqFx6sOkBGdSoVAAJX2seF0xIe3eJZvq4=;
	h=To:Subject:From:Message-Id:Date; b=S82aVsMeQt2p0BUqFqHmKFXoNacRwxhUDoBW6dnaaxZTcn0ypijTR6MoWXG2UU6AYGViYivGEQ7fewMBW9QJD0Gafc3P7bTysJ55iPe72ASsA3fQV3UXLQPtyMH4EaeVVbe9URHYdYObZHXD2ICaC80h4otQ2kgUZTpmwuOKr+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCMuPSqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCMuPSqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3283C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742564993;
	bh=yrGVPi/UVeiqFx6sOkBGdSoVAAJX2seF0xIe3eJZvq4=;
	h=To:Subject:From:Date:From;
	b=qCMuPSqs3VrTWjFqzQtC8ND/j3YOJTrSwNpOqKu1HV5fX0AQ+dEVfG3b+OIP82DXJ
	 aTAliZi7L3Dmxoa6odOM74rbmVOIkpKYkRmYP0ocdkFmR3yg2LyXsSjvgp+1j8niKG
	 AEGsYy8lP5+pESWmTNlnp6EcpXBLX6qvuKprqeSoyz4JebRX6bnOIIXz0vYfJIeWh1
	 fJCfFIujP/q3aQpUyS04O7Fj+txheiDtXsvayMVo3e8k59HQXHAWjmwiWrqcG9ef8+
	 ZA9t/wN4+om644h1fE2UtH86q+xzLAI/xaDuqJooHMRlgSp86Y/8d/sizMnvLNo2j0
	 NnuoQ09i6bpQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24B4C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256499365.27944.14484246769998068816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05d31fe7743a2390edb60781cb8529f2d94db9def9390997856ef4d57738906
Date: Fri, 21 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742564993
