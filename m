Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0992045A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742057995; cv=none; b=MyxPr/9RQ+C0PjdgBCtRNJ2arz5Q5sPV8n/FIpxXPmZGVFi7BzPdYhmzs3x2mIVSx1bTxDQg+2PHNPanF002SKCES7cxg37kgTKlnZkdtNZJLxBUIqkqNvDVGhltohW6g9QflSxcE6FDEuJKziLGLOdhQgC+KJEegrhlnSeZKzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742057995; c=relaxed/simple;
	bh=RyQXJGcAT+ZH8OQ8n0Wgzi22JLYahFlf98/v3rgeAYs=;
	h=To:Subject:From:Message-Id:Date; b=kGK5IiN7sR9PRjRxYTp5ENNhJmlZX76srUkrBxc99ZaMTE2ZuxMU31pe7vmWHaB+dZuvP8ULyEUpEJjB0KEnIt7q6Q8zdGZ/CPkvGVUt5Ie4AojXhAe1/tVZW5lLc7kP4yLD+QJs/wyjee17GaW2aGUfrTvJ+FILMaEHZmNC40E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViIXQpRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViIXQpRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6808C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742057993;
	bh=RyQXJGcAT+ZH8OQ8n0Wgzi22JLYahFlf98/v3rgeAYs=;
	h=To:Subject:From:Date:From;
	b=ViIXQpRlkVKokzQqT1mzWDOLnvcJpcUdgkOHONOW6GP0KFIlELwQV8r0h949iydKc
	 fwti9Qa35YiS4KR7M5AXVUQ49JArzIsux8OowbtlahwFqG4ktolprBFNzp7bLj7qYe
	 xp8T609VTBcl+D1hNQdWAzl611qaxRV3KJuQNotrlfLAt7Q0J6YBP6c1vkVaZZQhkX
	 sNEXK9QLeqo1bAlkicWI4j1WCZFah7OaR1Z/RsKL3FTReD1bT6Xo9UxYqi3xz1mnDV
	 KlRKAtPtNDzMgQmDHL3sOpZ7DYR+pHHrwupylUljceelCEY6Hf1rC8IECpZ6Ov1dNo
	 AX3fDnqoWneRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A98C28B2F
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205799358.19983.1148963448938503435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4136138dfb231549847a83909aa4a8fd1c664ceeb3fc59efb55ae8a4a194a3
Date: Sat, 15 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742057993
