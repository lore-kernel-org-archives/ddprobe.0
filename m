Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1104963A8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781715394; cv=none; b=H3DNVYZPcz6+5SqTl2MVJehQOwf9Aay5u5eGGakAkPLN/0qZuSHkdydjdk8VF+ie14sc8Pm4GTyKuW/Xmw6XMFXucpHJCLkJXEv+lHtlNQ5aG3fvA1docknpMO+1zEiyJHluDaEO3TncLl0dCv9NDcgN5KkgJ+xLZ1Bjvt+Tylg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781715394; c=relaxed/simple;
	bh=dHSZGY1ELo7SUIO1j9yyR6GNMW5BFQomnr+UZRtl3p0=;
	h=To:Subject:From:Message-Id:Date; b=V/cFhWDF2NUfZXNC3biwALYr9Fw+cg6LRPWGae5DNve6Y57KC2KEvFKmGrc1SX+wd16Hpw6H4w5oCUzrdS5vncqbw5vzFHUobxoBvK7tL6UhkMbhHeo+4Pos2D9/pgvPuWVqiXBTOrtwn7vmXDfFGEjWaw/KBwHkZDW/4McNZ0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIEzv8zJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIEzv8zJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C3EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781715393;
	bh=dHSZGY1ELo7SUIO1j9yyR6GNMW5BFQomnr+UZRtl3p0=;
	h=To:Subject:From:Date:From;
	b=MIEzv8zJVO2MfDPBb25qVmtoXdTUxmstlL8C6HOXW3NrwScj2mSvK87h36FVziQqh
	 vxpVLDZ6Prplhlcu5n4VMhkXPFbpS4wHhqsSsfKaqmvDH/5y16IbeXS0T8ewQKKYJn
	 3aiG/KRQvXh7M2f5tUZCpWCpzUtEXX7QZXGrmrWrwz88kZR3P6SPg95VMD7xFOeAep
	 Sup3UooIsUMntQ5IZVwua+CJtfFVWuClipqnJ4djLdcLvreWohZ+BT95AUYxcTb/PY
	 IZ5OZ8I/Xu7GIeYk8304H9DIMrE60hT8ebxiIZe8cPfQL5JiFOS5lOFS2wHxkhg3YQ
	 chya/uqBYoChw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC08CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171539369.16473.4800400911302001570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cbab44c694b8ab07fec17e8005a9266a8f1d7950533fb6e5a7ef5e96a60daf6
Date: Wed, 17 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781715393
