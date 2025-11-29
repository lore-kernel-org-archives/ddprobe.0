Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3749B22A4EB
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764417174; cv=none; b=R44GZNOZX4C+4+4APhMFhu0mtg9cLCNKGDThq2oNLfSBM6e8CEmyTyhzgZMAiaMIEkL45b7chVwoQXBvpzxIObhS20DSx0zSVzLi0/VNt4QwxAD+VJZ2Mege+GNGCd2vWNPz7cKt6pqMLPyt6fH8XIoW9anYw7xQhcd1Pwwcn+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764417174; c=relaxed/simple;
	bh=G7y5A6kT8/ODMcn1P8PTAbLXvI/17yvS67n2sYWsU7g=;
	h=To:Subject:From:Message-Id:Date; b=lQP7CYVP2Wmeh1tw99Z0fvKZ/xfsL3wdja6jrrfOn5PZbLwPuZDkgsWURU7R1qJXpi72Q1Q858D9p0JyJBK8l5opmgNzJSK3B7eueaSm3Q+9PgBSQWMNM2GW/SSRd/HIZo+R9v5yhhl6fDzlTkGn18cbImbAF7Wq7lV/X6H9Wqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSrm7lmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSrm7lmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2EEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764417173;
	bh=G7y5A6kT8/ODMcn1P8PTAbLXvI/17yvS67n2sYWsU7g=;
	h=To:Subject:From:Date:From;
	b=RSrm7lmAkFmzEpZ5q8ZPJO3JKlUoseO72BMmcUZCudcwoqDjrycTReTzFv1FceW8E
	 Sn8IJnZYwqzK9WGwq0/gdCZqN3QbUca/ujXZ0ct+/DfiNF3zWQpZVsXvp2EA/RghzP
	 FbNxaqlBHKFTP7p6hQ6zbSQQ9Po0AUp6LnY97eIqvfsOGyADsHXRInpPNCPrUNUQ1+
	 iEBu1lX2TkrBoYz4Qvq528gn/dZOQTegzQPuiaMD4rPQr6ZKw2J2YsnV7eMdhjkoYl
	 BucoHb7ohinRSxg66WAtBkX7nJlhYDYFNPkk+/bQXngxm6kYKf4vJUWn/K+le4piUj
	 Zez6ygwtR3r5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94294CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441717358.6461.11840578862296667119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045a361db35aee4fc2da405d91069e79ceb79ff316ffd61250ad96362ff874fd
Date: Sat, 29 Nov 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764417173
