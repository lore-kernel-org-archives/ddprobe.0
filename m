Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208892D77EA
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759346994; cv=none; b=aJdU+RFkJuTsWSY3z/EWHE81spDEw8+gD1lQGfVjPzplKfMCwB+DBqwqfGEmVFRYTXwdULE8OPHh/l6RE6qHGJ/8LtJQ5LwHXw8Yi9rn4JfyrLputj0ky5qr3bSv2YtA/IGNDongOv4ABAUT0Ic7gDUt7Rt17TaDqvFR5DKaUeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759346994; c=relaxed/simple;
	bh=UkSlwv/U1n9eqzT1KQl8h+V+05IrHSuze6pgSWkBRjE=;
	h=To:Subject:From:Message-Id:Date; b=moWLnFrTWg+uLzTeEJbwvn4XGxGYmPI9Hl5XCIbswV95h2/BPLn9r2zJkiSKjkzQpiwl4oEp8P2oYDz3bcyNaExFgPTByzfgJU46GdtIPKUiozR+NbRMJ17lkY8d20Aa6O8ynOWaVVoxqZqs7HHzN4kaC0MzsXGJUO6yMaElxdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZoHMh6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZoHMh6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBEDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759346993;
	bh=UkSlwv/U1n9eqzT1KQl8h+V+05IrHSuze6pgSWkBRjE=;
	h=To:Subject:From:Date:From;
	b=YZoHMh6HsPlLKfIXDqgXIo9jhlcLcKftz20aulGohliBTC4l77/vk2Z623wqE0cIT
	 /wxujh+YRxHcPIuTxHyhldD3CSao08TavvLHDeCTg1p0Q+AizA3f2/rT3yS4VqmHw1
	 bx2bLQEjzvGi0F+6b2xhA0x0facPF9P9m1EAEtYZ9UhQP2SOZK5F7g41HhN6bEqxum
	 Cmdik3cIUxg4g2O6ZyWsZPZdxw9NpI77o+F9IHdkmAWZ6iWXpreuWrg0VCoQEsJkT7
	 UoQInExcgtXtj5Tkele6p14VzN3ggcueW6I8XhGrkqQoyCs2NggmeK75z3uJ4L2UPe
	 eqlyegogiIi4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BCACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934699358.1311.2974699049331087085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff678de9364abcf7ee5e449cb12ce4092865e5595b8b36f5797066437c0a905
Date: Wed, 01 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759346993
