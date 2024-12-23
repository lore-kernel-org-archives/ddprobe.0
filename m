Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E391C36
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734962754; cv=none; b=chLo1baRxQGkQEW9z9sA3XwKahxaQzZ40QRJgA3eb4XQnwOa8sqVzm7x77q9w76g9Hmly9glyxpRM0Y6vwHdwwpGYvfBgdMOSxjIY1IPMeVHvvzNtgwInDYxRiQ1ebNIQH6QD77Xsv97Dvxe0paT/tqcAGjsD+CeaWKMD9ChxNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734962754; c=relaxed/simple;
	bh=oLJO0Lx5BuLitu4PozPaEm5U1oP8Etd6veQP2uNAWFQ=;
	h=To:Subject:From:Message-Id:Date; b=jVIRhK//ya9xdDJ2NdC2TEicREjiNwm7YvIv+3i37xj1d5p2001ThG7FpN7QMWW75TH6fwYuvbzUa/cbTBVw1GYiFma0NIHhZzqAT9C1p5VWZZKq/61GqbXVh4BSJ6YmVGiedZNwpDr1P4UheRhLKDrL+xUEDMgQy1rK0dggYCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6hkncUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6hkncUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1949C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734962753;
	bh=oLJO0Lx5BuLitu4PozPaEm5U1oP8Etd6veQP2uNAWFQ=;
	h=To:Subject:From:Date:From;
	b=j6hkncUCpRwjleyZJI3jpGYsz6/KyQuy4uXTjYoiiBdoqcGpjenxBE3K0Y6FA5ppj
	 mUwgl3xvp4bDHLbRV4CIH4bVnOhrj3RJ0ZLp3VEyjRj9wSIf5CWWkxA26kbdLI2aU+
	 3a/j2RL/HCP3xXDJ+gqCGN1YgEhvjBLKQM7ec2Ml+vNWjncF/Pvl0brcOPnPp5M0TT
	 2KqPuRkTriy+/qQGjAMEbisflmIwcIEvSr1Ct3r3Br+Ed+vBF2EzOLMo42BlPT3z1z
	 WvcWGRNyMNWKkxos7S5ohVlOBmNOjrcLNtKgPI3vjEd50jEtAUfFbly/jhGsmOrXU0
	 MkRysd+myMcVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDF6E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173496275358.27700.4697970254067578692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f57a168480fcb84714362e6a76f09132bc003de2aa5d78175f8c4601410b8b0
Date: Mon, 23 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734962753
