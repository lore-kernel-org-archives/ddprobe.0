Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C705F298CBE
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756130393; cv=none; b=mdKg1zlwQHvAUlF17pj/3KnRE6+M3Kvu2H214X8/9mZZr5QTJENgNhZi4UKZHtf0ErBaNoA3YIR9VvmsULmLY9KAuVV1pbsNdAC8xChhH4UZkYvozGsObZ2vtzeXOp2nLqYqNZD6bdRKxYnlKj4giHtjTZwDfPUnGbMVZdrED9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756130393; c=relaxed/simple;
	bh=L/lL0O+HvZj4M0TH0qkkFIexP1CBv9GZQNBSk7TItl8=;
	h=To:Subject:From:Message-Id:Date; b=hC40p6FDI10dIxBol5MO5S0aURAfoo10foJRVTln4lschIi/TdhHI5U+i/bBUv2VH1uTJ/9bNTNy5iEGLfjCNqOU7h9Ot0zr/nBhsyqsM7F4gIPg357d+Vcw4uYTmcZj9mkVP8JmhUwF8hYhPQbFe+l4gVL+bVi7t/WZFWR8L4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sug1DmIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sug1DmIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A3BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756130393;
	bh=L/lL0O+HvZj4M0TH0qkkFIexP1CBv9GZQNBSk7TItl8=;
	h=To:Subject:From:Date:From;
	b=Sug1DmIajl7tF2hO0I5/PNx+RB5yNWLqJUJkvydd/42c+Fxw3ayB/l4e/pTNMBstA
	 bokXIZZIabwdWN/7rxGmsWxNwzge+KlBbqnirtIVvh7ahXtCIU8cJPWcksG1qAkVh+
	 pzKNVYAV5ROj7MsENmpqqGh84b1D72DI+STcffNaqx8xW1RhfaYL6Aa8eve0uUFdSJ
	 66+uTuEzP+QkIIuF9pdXVt76jpieAPGgyc1wVlC6Nv9hBNku7zpwdlnTz6Xkc+ct0K
	 O1L24SlmnQotvQQYsim1s5k4Gp2+sa07JUvwd99c5NTGBHh/jY/Y5sInjSt50GX0M/
	 /GkfK3h2bQL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DBCCA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613039359.22841.12479294213720520712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0925028f2ed62ceda588348fb82fbcf6737999235397703a4d7438657563842
Date: Mon, 25 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756130393
