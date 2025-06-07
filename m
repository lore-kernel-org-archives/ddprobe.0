Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C88E1401C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749260394; cv=none; b=VruG2LJpzFekQZuhpgBNZfZB9O+zosKJulqOqzslt7m6GGe5W5olf16js6yyXtSalyf4UjJHbsnxTnshxgFBcPcinRKpkFpszbcEMTSLf4DIilq1P0tL5fjGOeWqrmwYoig7GrZseiuXL+N5uPM7GIGIKw5RLZ/awZpB7EMj9Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749260394; c=relaxed/simple;
	bh=SKIElAnCUZsgabBGADGxZsdYD2xpt8+UVD52VJKCP1U=;
	h=To:Subject:From:Message-Id:Date; b=m7htWkomo0IK8EPPGyAeKVEhnqGhzfomBb3rbOnq1Zh7KOS9RjPjbmDCJIwJy0MdR/v4CWOoAi5cpmDvUGSzyjy+N66LMjzlypcA2u+Uv2/f4r+fMOAIAkla0OFVsRD4ktcS12weI10UtTuGzQ3AY0v2nCt8yJ673pEiy1/iKyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCtgGKRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCtgGKRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81CEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749260393;
	bh=SKIElAnCUZsgabBGADGxZsdYD2xpt8+UVD52VJKCP1U=;
	h=To:Subject:From:Date:From;
	b=jCtgGKRjmk2t4be8Mj0tp3mYemhRkipLVzXGf0fFnE8iUN1PXAkfXbd5Eb4/Edf81
	 si1Ay6mQLxQcNmf4sStz9eoCLuUbHftGsSJYPuq9K/ytd5M0q6Cu9nVggN0zJFeAHO
	 CHoC1gdsnkOjJUHSEggzBWEgALYXqexLabXhIN/KJ6gyb+Rbg4eVDuPxTZH/ZI6If5
	 DBQs5esioVxfbuqh7JFM4ujQ3Xs+d0s21KrP9hWy8YaXwQrskamM/ZKNkqaYyI2ZEw
	 Qyo8pzVWjVVCxCjOHDaa4kKLgsmTY/9lfgJHjQN3vdLZFsHs5wPVU62GQ7pvM8hI0b
	 LRRPfmFJehYpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C8C5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926039357.19590.3964169268694287522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee180157c411e75ce5c8c8507bda6295e60e2fd60605833ea89642a3e6f9644
Date: Sat, 07 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749260393
