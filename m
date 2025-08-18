Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04641263F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755552594; cv=none; b=uvGyoaelesdaKvSBb4p6xprbITpqEdDsO8EkAbuxniAoYRJBUJJ8w9dhjiAYfI1d2kWMYQXdcQRqnxy8dE0TDN0stW0vW34N/9n6RF/tJ68OIJ7vhW85X0yVYuSyP0Gc5jyPReZ3plRWHvhBz0sDDlkqsSxU7KGSHXd9ZqiuY/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755552594; c=relaxed/simple;
	bh=0rH2+8+xbooNbWpRHuuXwC0gP5SIMC4i4lHlxIr+rC4=;
	h=To:Subject:From:Message-Id:Date; b=Bkb0zzjIaaGl4QwCII2JzqJByBpV7YXkZ8YfCfw4vWiSWSkl3u5mhwHBG3x5orIWnpoGZ8uqcvNlGFTCrIqtFdYbdB01+1n/jKoLWqYZaVZ/4YWoi7hXh2vwG4RPIJzGC+AeL4bxLxjgNBPkBdnN1Q7XdaSr/J2AOj7fUQKCIi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=indSDn2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="indSDn2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3507C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755552593;
	bh=0rH2+8+xbooNbWpRHuuXwC0gP5SIMC4i4lHlxIr+rC4=;
	h=To:Subject:From:Date:From;
	b=indSDn2jd+KtDlHqjndpe9/taYMTa1zs5/ju0PZGAXq8boU4oxEV5AHUpqduhgCJn
	 pE/Nr4OqLnfBvr/2jZeaXKnwpZcYgvGUKwYe1djdFmjtSzZIBKZz1js9YKJTStoYzL
	 zlxgntaNuEoCUQsePEw9xbXC7YSTJ5D/owwVp1NY/JJv2U2RaY8VXI2IAOIXjZlXUO
	 zYkc8rquRfhNx3a0vL4h48LSA45BnkFilIyt3UiJAmOWCP4Pt5tmGr/ab9hzbORBcc
	 PMbH9wDSZZ1EU+aGyeCbUVRWoN+E9CZ2myYjDJU3SAuStSd6S0whBVQOANFueLE5ta
	 GKJ7vLA515Fvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905EDCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555259358.5280.14762294159672899090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9416c592a745b099e7496d3e7a32e2f4138dba474ee9c80c3069305e9c1ba7d1
Date: Mon, 18 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755552593
