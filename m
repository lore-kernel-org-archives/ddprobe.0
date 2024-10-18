Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A29B20E31C
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729224354; cv=none; b=Gknqs7R0wXc8snKBgbcXxwW57qdZTY4HwAhG2oyFU389EH3HMQHQVhW+Q2eHZ7J7+VNXB2/NLG7TLT2Lp2qRFXGH8L+G6zWqHiBanQL4Oq60/15tEqA4nTrVEwLdvLKanvG9DdDj6vN0bFTDt3/+0BY7Yz6/X9wtPmO6fMv30Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729224354; c=relaxed/simple;
	bh=kUA+RInvxKb7c/keQbYH5BYxc3ApbQetHiZYidPGEnc=;
	h=To:Subject:From:Message-Id:Date; b=KENvh7ldAUYzVLh6weG71htHYfwVSgF4txDABAL//AbmcSAUaQFqwgzgSm3c8gxta8DYnMKSLQ8MVfhqgee+/WSamq+f6EvzSsAm1XrNYS8r3bYKjw6lrSD3zzgfJs7Aku4aBjbYly7qIYb4dKXw+OzuotuzPJZXnGAbGI3jCXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o47xmTaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o47xmTaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F1C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729224353;
	bh=kUA+RInvxKb7c/keQbYH5BYxc3ApbQetHiZYidPGEnc=;
	h=To:Subject:From:Date:From;
	b=o47xmTaK88rULUa3Xr9TD0KIG0agguijopa2NgQkErsvWf49aTvF7ZVvhZxM04ADl
	 deU5uMVpjlRHLUBPoIxJL5cvJA9vT/SoCqXSQQnTGrUXDwW0LUM/ZggBia+2HugeI5
	 C9Rk6vIYqo6J8NDROnI6K0Btj8TB1X5kqFhltEHqZI7Kol7Jv6ExUBl7LmAsUNTQVm
	 B43yphDqWI+wlHgLmEmEBFDYPvMkg69EOPa0XDcEJYOGDudxQ7iTQke3auzabnm/ff
	 KXReEo7pPe/lKNylR+ubDAmv6i1pWzCfhl96barDQBp1sWUgzBX5N1Houbcja258Kb
	 vTbMnXjjTc1cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE74D3C548
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172922435359.22667.17992889355439121943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28394ef103dd4f82c01a8eb99074505c24254f7c19350c998ae29f2eaf02213
Date: Fri, 18 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729224353
