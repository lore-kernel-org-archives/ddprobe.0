Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE6431A81C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782900514; cv=none; b=r/kSjajD4bUnWunH+yhb0AEdwqbWwHuXN/Kqr57G2gF7ePvNX5nggp1Y1jDd8mvd9DKmBzg05KujJ0nVSIU2NCf32xOi+PNEGnThxVHmBg+UY4ji6pT2MCn+W+j0ZSMgdTiKx5/L6qbgYUtWYIuA3p9oX6Wo8hdAUBr8vASUwCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782900514; c=relaxed/simple;
	bh=buEQj/SbSqxlE/lb03SJLPEvGq1zdzvSdGvvD8SLBsI=;
	h=To:Subject:From:Message-Id:Date; b=q2cV+Rmn0vSH2z9hnQhBTY6rMRhWwAUqb/fyDGLXvr/OLSVBeoeNzG6+5Mo5zsiyfLZtZJTSbCDSTuWSN8niTLhU2vMWOWNt13rBtLaY2o46D71mzJdXChAZ1KeN+OsM5g9SPzQP3BEUJuAgAYS9otxufiOH/D8bMHk1vRJ2bGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gP4XmuQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gP4XmuQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01AEC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782900513;
	bh=buEQj/SbSqxlE/lb03SJLPEvGq1zdzvSdGvvD8SLBsI=;
	h=To:Subject:From:Date:From;
	b=gP4XmuQX0CsH/4nIvdSR5hFQ263u+xCBs9TocECiModCnkI/BvLnGDsvdY/wPbJTW
	 3KGJCYVG8hLrquskwo4BujtbOwpf0endLUa2bcjnVJp9HLaS7xq6o4OFvFvUFimunk
	 0KMC8zU9wuHsc7wwjJ0Izz3E6TVlrFbecf+Z/U0CzQGysc55D3GADxWdGU4Ru0ct5X
	 wKdK5Om6jnbdDw8+BpbjZpC4omjAGC87suEKGUEOeLcNkIAgZyWI0hPFb2lB9gOOdb
	 a5Z3DfZAfVyJ25FV3Gm7B5fjrbguqaYmINegoQz3Ryhn0NOU3hy/2j/YZ5puQcXwxd
	 eilc0jB3hKGew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F52C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290051368.18505.1698225960352613823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4ce13091502a50ab996a43f1e61d009f863be5627ede88b945b67445fe11dd
Date: Wed, 01 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782900513
