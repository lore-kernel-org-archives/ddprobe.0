Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF62A126F0A
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767549233; cv=none; b=hw3tVvVMJkkzvm9H/a1vEhuP+nyeYiy0Bb9eU2kZyJu9mhHZ1jTB52uETyYDi5bwUJv9fsiZvhny9aMUDLupKzAWbK4U3i+DXUdnD3brSQVadukXFp/FL+oYO3d8a9yNyrnDaJvO6FYKMvkSOY8jw3sQQWhrGiInFWtALJXPcj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767549233; c=relaxed/simple;
	bh=ZmQSMBvxX2pIiEtlWhLQES053xir8HxapdWjycLnkDM=;
	h=To:Subject:From:Message-Id:Date; b=HkcfGDVqkPnPmjnL9OrqRRvyI1P5fXrVMI6DyMBWGoD1rWaCMPrPKQc3Lf5U4mgW53J2RSWPWRxHWxqCXq/4oWir/dcGjoBl3wH5NCG86MazXyN14Zl3ouqXq8W0grof0pYzVEMxLwOYOZ13QrjP86kFq0gybiraZxT/Ybr/jeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEigahHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEigahHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF72C19421
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767549233;
	bh=ZmQSMBvxX2pIiEtlWhLQES053xir8HxapdWjycLnkDM=;
	h=To:Subject:From:Date:From;
	b=uEigahHzTDRLi2yT6lZLs018F4Y4Higbla3eaQ4qCoyxw3FfV28jXAD3qFPfeLiN8
	 2ge+9Jl8vZmMh0rJsAqiNC/SKMCHZLfsg2O69tHRbAuVPwSORxTc1RuJTkSCfF/r9K
	 ek2WPWZ3jcnN6DA4Z7PbWOQ3e0lIUh2XXGkuaPm+v/l2jh90ayDqBrOzCLgo9PsVOJ
	 VeC3TX+dp0OOe8N3c7dcQcQq4D7OQkzXl9KbU4oRxgQGWnzV4Q5rwFcqyKH/3gka0G
	 5Mc5QTXUg8K8ypHDlpOGK7NZSokd01EJadNhxYC1LlMcabHOOBgpv+mSxI3R9WJb4f
	 dtmy1InFXfIUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB6C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754923357.17158.12405244458019703595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32455d5d090dc638486a90e2d069323389619dd0ccf1f1994a4365dc723bb639
Date: Sun, 04 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767549233
