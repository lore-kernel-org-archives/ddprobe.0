Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFA422D7A1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768595633; cv=none; b=ho6HhBeRP1egT8heXkx/mFZAD/oDErwrEcn5jXNR3xWVW6LzienUYchLgPu5zIXOdNSHArxV1JSxELceZAuTvuawFgXDcHHTJIx+XLsvZYfA5lR1O7obWdQqlhSAdFR+Nhq5MI7qoLzIbU3drd130XfG8wc0yYlJQ39WYM5nJ+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768595633; c=relaxed/simple;
	bh=5b4Wn4h0qw2AXVcIeaY7q92zdv/UUC0j+2DenImGuQM=;
	h=To:Subject:From:Message-Id:Date; b=UIDWaYYW+e2mZ3lHhhqSQsxEyrxhLWxSJdIZGV6iSP9/SqDADiDisvOKp+mTDniVmi3GBZ3LI+YJkqzpu6m9al5XTLR0AeFy9lU1WmY+1+G+provJXEBQBYWc9Asa19UYgLrpsfEgp9LVplqL9/90SX5Mvzvz0ytX8tVMxRYRLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPSzTuQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPSzTuQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E89AC19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768595633;
	bh=5b4Wn4h0qw2AXVcIeaY7q92zdv/UUC0j+2DenImGuQM=;
	h=To:Subject:From:Date:From;
	b=SPSzTuQ+Aj5hVdmqUbLvRdjvUsK9aoG9fzf1+Y/iMb3HQADsvthX0qxFfh/x+UTTx
	 Y4/qa4hz84pcsHOAk71qHonk099LSrsQUd5ZB20a2knCdJPi9Keojr16KMC1GSiMHa
	 6ovuCEO0y8ohti6DCj607bHIk/si+koEDKXVcNrZiBRfyDrKz7FwtB7UdqsmxA2wOe
	 2HUyR0f8h+OV1hW91OvjNZW61T/eMmDJeH8EV1WQTtkoQSKUPxH2DRNq1WeplrmiHQ
	 bl4lRmreY5o6WyNBzL6Quov2124Hdep2AQm4l3RgGEdmfFoyE0DOHWcEtqPJZtPUOw
	 YUU3WsQP9SvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF1EC982FE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859563357.18593.16858361543311771715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974491a13aa2737fa3ab363178ead37d14bf3b9b94b38defef03a02eca32a2ef
Date: Fri, 16 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768595633
