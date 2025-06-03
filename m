Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBE633E1
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748911194; cv=none; b=Vj+u4+XsPkXZmA1cqokJWUpxVKDvw8WBgl5ElB1R09ducii/AteU4vA0Hv4EADX0zXDnlxHxlydS5Xo0gi1nM76mYZhVqMNKcWkzQ9WP6keCl0NqyTjrs6QglYD1QleSNMMSB36EYCaAWol13i9XX6Ouj3yk24CrbiO65heMwUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748911194; c=relaxed/simple;
	bh=hfBu6Nxvz+OsdIn3ZA/8uzhxKpPIR2dV1aA7jLrehns=;
	h=To:Subject:From:Message-Id:Date; b=aeTLmb+E2tXAelDxfOPzeDHue1Ax00FVS8bRa87SJoFUbeNLZfRIflKTWmwXJBjVZ8lplDqoYDMdqKfHWDPQjYMu8QhKoq4hyiKSwRx6cOz72tkgh8nwk1SqH/gnWqhiV+lkJWPBmx4lH48Bhdbh/oLI7PKKHdh0rgoQTE2cwzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0VvHDAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0VvHDAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A155EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748911193;
	bh=hfBu6Nxvz+OsdIn3ZA/8uzhxKpPIR2dV1aA7jLrehns=;
	h=To:Subject:From:Date:From;
	b=N0VvHDAXXjZQnqIICDnrioIX/HstV4va+mF3tXHqbyrz3DNaO6FVhE+X7FV8ESzoq
	 ABOXs3A+UXU3ydqz220WD3JO3Nq6ypHz2PIgOEeBTlBA9kNe69R/IlODg6UWYtxpk3
	 4Tv3d4HTaXxnheCFiUr+oKjuJT9EXp8r3fvA5uCXnL4vYfptYM8BPtRPkgfQUUOwGT
	 TOaE21zZJmTZSDiGaUQnJds9W6SOD+GfOTv/VetTFOgdK4JGBRQcAyTxftpb/FKa8+
	 9ZfqJo3JUfkwiOXXPhtTObepNMnD9NAHySkA0esi5xmKY7WIVOFGKh1yknd0rK8cuI
	 8VhQH5bweE6+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC0C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891119357.9573.14543121936722573452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d944c5f088439df1782194494f3eb368db6d169d744a5d9939bfd2fa87704b
Date: Tue, 03 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748911193
