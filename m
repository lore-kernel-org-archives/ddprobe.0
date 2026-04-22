Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9EF330B14
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776887854; cv=none; b=Ry5WQkDqjI6QusFT6zWTxlJb08u+F/ms062Ut9I0vU/5/6AXN0XnJbRFxxoTFmUfIVbXog5g4Bw0bdrqTQN+KUIPKZDkx5m3QgzwWge0udJZwIHz1oXhFd9YFMjhy0Q9dEu69kmH14Lw4JvELNf4J/tLODTBH146KxZbxrAlHhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776887854; c=relaxed/simple;
	bh=aGlJhKkFaOxoWspT8FRYDAQkdrAGEibvfeNr0+WpeR8=;
	h=To:Subject:From:Message-Id:Date; b=Q6fVA1df1Ij6FWz/shzMzOB5baafmSWjwSLkSsCwdsbQyOT7uey5oP9LgnMJUKXKjTwXExMTVGyRV2wotXF+hm2dqtA+nj3IOeKRphVRwYNEoGaHm64UXuEN7CNYIKxFaG5wjnvzO1DSQK5Vl+21oY0yqWeOvOuv5NDD/SLAOD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7rZyBGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7rZyBGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD27C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776887853;
	bh=aGlJhKkFaOxoWspT8FRYDAQkdrAGEibvfeNr0+WpeR8=;
	h=To:Subject:From:Date:From;
	b=s7rZyBGaFpmTZS6ZyR4BLyEgW8juc/1P0gHdhoyy+lP8evk6ihbla31R79VwXV/3B
	 Ndi27fyQJmrdszxxCXJwNp+dD+bQd8YhVzpXjYZR4+XQtjK/nIpprdav3T+Skj8DgX
	 Su/VxCkWjtAtKRPtnlNCpvjJI9P6X3uhZvYs1AWKWwvz6Luiv5mWSmztEmc6uUIfnB
	 dcEtTeMHL9QfAcJc8MvtNBCuUyJr0S1piRHVTyMGiXGigF9YQaiEdgO0S20xJuTAjU
	 VyHOrHMLWMaPCAoZElbxEGCjNXzVMykb6iQ/+LBQoeVoiP9iiydYgNUwUAIZaHXPRH
	 QKhx5CoXblzYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F4CFA1FED
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688785369.13441.4205362567398197962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954ee924b8334064d4a841214ed7655fef5af45f957e0624317fa34db6248c61
Date: Wed, 22 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776887853
