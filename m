Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D891C13B7A3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773784493; cv=none; b=Z1ksgoZsAp0UQ3Y8ALnqgzqLIXQyqFUu7+MiswsIyQxe5g5xMDn8CO8iurpHoDjtdVjcrRj1US/xjU28VVAbpgJFvodFO3hQyaQlj5r4Ri/WIioJNdBNo1rQSTJaDKebLNra4YuAGI49a8WyKaBZQ3JjtZ0Bv4TzMdxDJQOElhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773784493; c=relaxed/simple;
	bh=9N+QJ4v5DH4iwCcYelC6L77SgH2i7u+luBYdfk/Ez/c=;
	h=To:Subject:From:Message-Id:Date; b=nIyFHn4Spw+rYdEl6wErMG4sFB495Nx/AXd8xe20L1WHwmRfRoGVmzNaUl5liCeHiymgCQJlA5gJFuHKdQZWD0Fxd5Xsk9YUBdrbwwQtl2chH6BXkjI+g5481EZFJNnGTa2GU+KbnKXgsbm71avcRknuklhzbMdNgL3kZV37F+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7b46e/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7b46e/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DB5C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773784493;
	bh=9N+QJ4v5DH4iwCcYelC6L77SgH2i7u+luBYdfk/Ez/c=;
	h=To:Subject:From:Date:From;
	b=V7b46e/tjyXV+eQwXP54P/3upUoQ7lCOP7Cvm2vun0upGcZdSacYohNgbHfZ1UfB0
	 r2lS5z34z1zoJkaITZILT0VFVAFwe/6Nnwari6yqx4o6EzZPUmVSBcBXqmfVDH/n2U
	 C0ey2m9eUS9Vx6/dIDKltbFiZmRzjJmM3Hh6Ueo9YYPRS0ddSpF4jp8OL/LexqIFEs
	 byAg9Z6GOgRN5kOYzFfKRmRQqEYNv1MZ1fPMt5awJnbfPm91zTblQIYl43/EpCNvsB
	 KND8XbGxiUTDmLCARaglR5+8Z7m3Ze55E4YwfNfXLsIM3eB1slmqvHmAvMUAWQQxVh
	 3Br4gVZ+5GA4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C9FFF6E86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378449362.13744.3563638709316594790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff9aa504d0c52ac1b47d2686d569cb25aa88aba20473d48716e6b3801981042
Date: Tue, 17 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773784493
