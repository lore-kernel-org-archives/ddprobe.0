Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7692D613
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719792863; cv=none; b=JZeoGhMqB9uFjUgiuIxuqhtcmYK9dSHEqSKBhvLckaknA1p6XaNRgXVimSCTvI1GDTkbw0LoTAX0LPvbCVUPq/Kn8HeP8JUz+aPr/IAs92qNtCf0E4OBv7fZK84vprWTYUTMPm+5o0Uq4fVpC+QjkK0mQVmVtp+45IZX6kFHdJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719792863; c=relaxed/simple;
	bh=0c8H55BLDz0zVbyqCCpbrrkFlVfM/bZnMTGykgR6fUk=;
	h=To:Subject:From:Message-Id:Date; b=VZ6va6vSmZ99k5YegktmzyHc/aRpSSH9cXvWSmFaQ6EuvngD1Laa5BIEhBrAKUv35UAWHexnhGBnNYsq/BgGPUClP6TGtuYryLSJa/SZcV38EYhsi8K58J7kkq6k+/343izgEQicp2HkAxspFf5McjP/ToaM5Ohk7gnXaSBPPxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAcWSxCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAcWSxCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF39C32786
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719792862;
	bh=0c8H55BLDz0zVbyqCCpbrrkFlVfM/bZnMTGykgR6fUk=;
	h=To:Subject:From:Date:From;
	b=uAcWSxCqN+ITRZ4t0HoxndWm8sRDTSlo3IpTYQAVpSG7nEihAKg4NzB0JORpkO8QH
	 ctLGNkCh3fCfVJ3XlannN2L9TX+sqU2gRKLbSfVNTBvnCNI+pDmkU8gLzS7W8iEiax
	 t2ITEvtSmNiVi3eZJvOcukSlP5qvmSW+HNTH8Sxwdk4ybbbhkZDWz2YlrUsC0d1Ctz
	 obGmAMeYRwxFoRQTyLPoo2pd5M43+vPtUJ5Jh+k4oXU3xSu8qIdOQd9IZWhh9Slxc0
	 68c1+kPPHDoa6ZMxc29cI4qs9Qsf9ndfbYyBx0orbni41HUCnNBzonzTW6l04qYl4Y
	 uPJZXRq9rvfDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BC2C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979286278.28522.4456940483885272922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bc524d6d2effc973ce46968cefc3cdbace8f136c562593855c0622baf3f371
Date: Mon, 01 Jul 2024 00:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719792862
