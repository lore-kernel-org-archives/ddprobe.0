Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130E372622
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774772094; cv=none; b=C4BpbOq8mRHhJphPDEIAiY/p1N3/FHfvWeVxepSUhgT6+f/j5sCdhntJKtfZOHrT7JuawA2tAnAwXCu5GY17PRluCoQ4ilu3DlQtjvv3zDQxUGfVftKPiCpNzdLkjbEX5QoY/7MXv4Qo0RWcvuo87uJoB8rrEv6i+RE2MN3o42s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774772094; c=relaxed/simple;
	bh=E5d4JpGPOgGLmnkEpfQTx1uQmF5Z0npLxA/h9kTgpbc=;
	h=To:Subject:From:Message-Id:Date; b=L8oXEDC4SRn91nrgl+f4EA8+YuH9w0CJ/EhGgUu8r7/kshyqsJCwIgNc5mP33dt30z3gD2D1UoHFscUVw16sWfHlL3GaI3/nrRcCW3XgXwLNL5qGTw3NP6o/tGPnmvdJRi4zIPC07iVGcBFUMdNme+ZMcxPzzYJ7Ar4BSzagtLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hndAlop9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hndAlop9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A668BC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774772093;
	bh=E5d4JpGPOgGLmnkEpfQTx1uQmF5Z0npLxA/h9kTgpbc=;
	h=To:Subject:From:Date:From;
	b=hndAlop9GDeCLEj36uie5Ek3mLQJrkfQ8kbwzebFGHK267BnbesIPg7m+fLxTXqK0
	 iOcmsXnFZXqju8TyPycsWaYh6SsQVzSHtTHBPfBiPJ3NDHPX0HMgmc2attJAL970+B
	 90X0zUeItnirOXPpv3XUSQLW+ioNA7/hgxX3LFP77/5DvknpXJuz/owLPtTWNEOY2L
	 H5YXFDZ8mtsmqYHCC3oArPjipHq6YoJ8T93akM4v9WE651Jq89kJ1/Pkkn2/Ac8/2i
	 M4xHi0ucpoi6rhJz9EZKUC1PvBqdP2EDCzFUX1v57BfCfoWN5tSJPSJqbdIrOZv53l
	 u7mWWL7WJn+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94296F3D5FA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477209358.8218.13132368619595694531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bd599a97219f9cc36dfbd111181c6d4dbd0bc97cb9c05fd5738910841923a1
Date: Sun, 29 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774772093
