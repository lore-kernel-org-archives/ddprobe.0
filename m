Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB843D5237
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784540914; cv=none; b=K8YOG7JIhuby3jmV2FcxCdHDaDXhzlrPWuTqGW9LiF8O69LLWjnTrBWAjdUFoLG4tnCrOPPe225Fxi2H8Q/emLK74vOPwX/Scie7DP8aOn/sDeYR/Z20dnWsG215LUObz/iw7BgcjAhw+o2y5o22uBneMdmddS9GMZEdDBgGWDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784540914; c=relaxed/simple;
	bh=94VmioIYvvgWlxW0H1Z+MBKStSIhtl7cLyQfjCOnT+A=;
	h=To:Subject:From:Message-Id:Date; b=YtOLCr5XWLLlgrFwGezdK3uXTnkNQwHj5AMqBsbLB01fJFtUXzrQVVJrKn/EGkl8ckYn8wv03zOPMKWBD0mvSVj/bCClMdJ2SRlMVaWyMkm6OU62xzCZBj3XH8gydGaqNw7O6Gw5sdHpikvMwqY1+seI3j31o1dziqYwJtWVpBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYTjXXmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYTjXXmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0453C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784540913;
	bh=94VmioIYvvgWlxW0H1Z+MBKStSIhtl7cLyQfjCOnT+A=;
	h=To:Subject:From:Date:From;
	b=bYTjXXmWk1gl/RXLaVBo2PrAzaSFzuq/Nu6+oXPfObUTH3iMUn5bV3vt8fl86c94r
	 r9ZzMA7wGHNDClepubnhHaJxyOcvn13MJ1quEmei0oxANKVbggSS/0iIl+wP4CrBbC
	 qq4W4UYbQU3+P7TxtlHazdy8vTN7ftWL9QpE19/iWXIV4/bh3kZ4FVbWp7nIuurZeG
	 y1hzYf6+zvMffzeTJV7FJgYJzmKqoN1N/wZNmqT2M3AuhP25U5uwJbNDaLxGVRIb2E
	 C8xxK1pPN2hviOvbIL1gAxeQX/zOy6aI4gt+tVzzwCDQCkKOR+aOh2vH0pTISVu1IL
	 e4OJKvfJ83/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BEEC44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454091373.18785.356513335415413087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7d2a3e0f0faf6928dcc8f0b29ddb4d139ac8c0be9b4ebfb05984b5044fbb0e
Date: Mon, 20 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784540913
