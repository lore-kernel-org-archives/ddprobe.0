Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6290A1078B
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 08:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715417543; cv=none; b=YOZtlBXZT6/4vQAVsoSHP/8ZUrziZiFL9guPaEZrcE8qznkN3Ditxz2aPQ7zrZUGGLEJyECeT5/oxtkC8A60s2XX7MtAFVp/KpYvr1ZgC7CZ435EN4MBcdk3tZIVaoqd9CHQPeEPI8HEG697sFSibLXEhkb5Sa3GgsNuc211sNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715417543; c=relaxed/simple;
	bh=r/8OzCJh2hlk4htUEsefwuQOuJqXBnj8CZgP59J13bc=;
	h=To:Subject:From:Message-Id:Date; b=cbzabbeOuFOPoekbnPNLVdFn/5Z1A13s+n5m6Vq7WOlJwoUDBWpC56+XcJkkQkWEmkKZvfLwZZ8o5hRVBpgersFaBYfrHe/G/9YkrFxfmnhxB7mxJnzrHuhtUNr9aVXSCW700dJtOV/Scib/KhCuYwo5XJoXGnKvDKSvzyFegvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOW0A7ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOW0A7ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A7CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715417542;
	bh=r/8OzCJh2hlk4htUEsefwuQOuJqXBnj8CZgP59J13bc=;
	h=To:Subject:From:Date:From;
	b=jOW0A7tizW7bqOYVj2Mf98ah1T9RQf8LdYgenEUVdpiSj0VZGbTnDURzCm84zW10J
	 0U4bdgAmryIbFKVyX7ONOeoBBhK7wtaQTqD9jvibcX3C72+TmHythmPc78tYLiMO4F
	 20M45Kie1xK6bMGTp1i0G3ZJSTe5o2ul0M3BsNT6JVfvyHF97t/ZMbaNLcau7IG6K3
	 GQ26Gnaox0hpxPOJv3fp1o0BBMoXF2dYpSRk5Fa+JlhJ+oRa92aQcjDcTr2WEZI3Bv
	 EIj6n3bEOUD72vq7RJbVpUyC6G6TPhyfXU0NsNWahQE8XuKLZArgqSSyzN7unxmHZ5
	 6U9ABdLLRd6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C105CC25B5F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541754278.1207.6753398586668013904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c063a799da455d3a72ef19e1e8a2e1da0ff938580755e4e99aafc3b11e15bd24
Date: Sat, 11 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715417542
