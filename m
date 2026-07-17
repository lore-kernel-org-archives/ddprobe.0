Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBF93FE352
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784294914; cv=none; b=MxLq9jfbomK1iXNVr5zZbd4dEeH6RhTUEFy2aAys6d7r4lNyF4gp55MnzIewPL30gakpdIvyJ3YmOfN4bWEVYemLsXOa1r074o1RvkpCuxpxorKnPCn0c/pPpP5m05Hji5ScD6KK74rjs41jECb+fXXBeqa+lL4d/YGuG78m6V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784294914; c=relaxed/simple;
	bh=eLxZdPB+n6O1brsdaE3IEW7gRYIpDbHUKZTuFt63zok=;
	h=To:Subject:From:Message-Id:Date; b=gARsUYrdprY8kCFkIpsGFZVGWtkcUvmKL6NT7vtCGm5fmWUdE5TWCFw7YrWCk83d9WqO0rzIVy/cYbUXIwiv71nK4srfRBwbfyViQG7skd5XtbK1eDD8MAN4+aupyuqEA0Jx6qtKxVdelesJNUe+CW281qGkcR1H0W2BB4qyo7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBcl3yBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBcl3yBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF80C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784294913;
	bh=eLxZdPB+n6O1brsdaE3IEW7gRYIpDbHUKZTuFt63zok=;
	h=To:Subject:From:Date:From;
	b=UBcl3yBGwMkbFbkWxShmHBYqTDrABTESfkSoKCy411G/D3vncV5z2M2D0QfPtGiXT
	 hzNKMufqPi7gpJ+tZd4roiKhvMGv+bFxPlEw5mrcJXkLDdLYXo7nL3Mg9O5KyVqaYl
	 dKtJ1PCqrMfaZY7XMF1PJfBxy+YjqgJODAqxV37pnXw2rw+nF7Ff3Qp19I9f6moogn
	 jiWmqrLCAE7fWvCJXDBSt0SpgIcpSqVonAC3z79eLZ95emxAj17Gt0Ej5SE7rjl6y3
	 6LugeGw8YZUX4a2hfMQ+4LZhcnTneeg//WumZYKYKGqPleqrE2E67gsOSSEvkyD50L
	 2TuM0XVOikGMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEE8C44520
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429491369.18790.12031345954523570093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860acb5cebc8d8337ac7f3d15f473e3af4caa80cc9cdc3e462be166f1b0eab1c
Date: Fri, 17 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784294913
