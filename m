Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A91014AD20
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774891494; cv=none; b=XZP0q4AtlAryJ0IrueG4ygPoavuxpvU7jJk9zUp7trUJRCw2rlnM4t2ohKpERRtERJ/Wx7WHY6CRJuMW8in/aLP5aHsKh36HDXB1neVQTu+p3duBzkX3G9dYDER/0yYmajy9i/Arh1EBM3HwcO1gZRaHtvAdP4yr5v2yA8T4lP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774891494; c=relaxed/simple;
	bh=/fQntW/emNE8KmXBEPEDKKIM1JhPJ7wACTx9BFS/Mw8=;
	h=To:Subject:From:Message-Id:Date; b=MzbYafuHTh2+JaBV6aSWtMfn9cR3Vg0IZcGtQqd0UrfUuQmkmv1RvznqxYR6vwHW8vMfRmsG2O8QlgGsGsIOsO5Ivy5ggOiLQJ14x4wPp/pAwvPmrZ3svPJTPxHqmIN7gw0IwfJCO1g9i7t6+hwf9PQ9048UFSZQ+0uMjtB/2Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbhoBBdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbhoBBdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4FCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774891493;
	bh=/fQntW/emNE8KmXBEPEDKKIM1JhPJ7wACTx9BFS/Mw8=;
	h=To:Subject:From:Date:From;
	b=KbhoBBdPJTkCBEQ3StbpJWVtFWEWr6/fKwBGSLZRs/gtP8ppW/tdo+x+bHaEkdKC2
	 6dusqZ9Irs6asmRgWgo0mzY8pc2O3E0a7XURzjkU8Zh4sOTonfZ7Jll0Ev227fPp4y
	 65Df+27U+YKEOxdglnuK/ecK15Egb3GZnSdJURva7OVu8997YxNV+DcUOyqThgpn/q
	 e0s6Ag+g1jJS1ZGexMxWO30990Jdoz0pZQsv6ZKe8b52GGRKIXW0+CuYt7Jw/J9AS4
	 ft6qirX+nAU15+6bCdC6N24IT2vukrAOCudviAAfVT2nS0Oo9OSSx33ZQIwRtahwXm
	 DYpeuR/8i8Qbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973731061B18
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489149359.12571.13430746225889110180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f2b694f8291e7b5a20e45f8af773cffcdef31d0f2b344213e9a1a16473e33f
Date: Mon, 30 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774891493
