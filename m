Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED261514F8
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775910454; cv=none; b=PF7smFashIUvv+qQXbY//U+S6nqf3uiCvPFNvXQcaAE4DQY7EgttBwnEBOxPvtKgvv420TVxN61GeBXq2VPq2LMhVAvFKW0DjmhOzMrmJQETvzMNp093uPLsW3eatNm3Md9tWTe3R/ZQvu6nTTYDh1n7gSsAn+JQiQVElslpFYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775910454; c=relaxed/simple;
	bh=ITPrK4L+McCLajzy6j19KiOPds/gc6pXp5zTZ1rSGKE=;
	h=To:Subject:From:Message-Id:Date; b=jf2hmnC6ket+neVgMMxEt2v9SgyqbhMyd66UGXoVkNaG4fnufHMb99w+Ti53ijX+0btiGcXTqd0iJwk/uKya4INsNOzi8nrq3t3OmU1RPjLpcBkbZw4D3S6Pp7vl1xlB/dgnDkBgTQG04aiOLCX7iiWbTQzS0ZaUp4Gf3VspZCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSDh/TXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSDh/TXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B6BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775910453;
	bh=ITPrK4L+McCLajzy6j19KiOPds/gc6pXp5zTZ1rSGKE=;
	h=To:Subject:From:Date:From;
	b=lSDh/TXaY49M3nHNlE2+mnhwrJPuFYRU+g6HEmzrmaT5s7XEhjJ6X9MCWVBoiJ42G
	 /RnMLgQRpLXEpId0RqBFcPJ6bBDolnRkyianC2aCx7TMeEmgVdYLCOVuTlIp9Hjzrk
	 hKyWAi+Ks90I06JvPYg0xVWXMF3L5/ApfnhVjXuxmC/4R9UfSAb2qllVvkJbQ/tnpa
	 HSEfi69bWgP4ZF37PkxfnuMoG/IvvWEaUOLsHappRWVXDMYQLkdVVbYIbN5Ci5aohe
	 LKKbSAV+es8aZAUmx3Ly5GU8KVSJQeGBsWNZgH3auGnQu0KbBVQb50DgueF2q1K6uC
	 0t6Hc8yFa4NsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB2F3ED43
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591045368.7298.16614969468371935365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a758bd5be8a60bb3473a13cb70ea1932bd8a28abc6b17694b63f845cefda372
Date: Sat, 11 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775910453
