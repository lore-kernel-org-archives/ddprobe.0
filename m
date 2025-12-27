Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F39B3A1E9A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766821434; cv=none; b=dQvRz2JaseHuf0YrVudpWQYtWM7LL/owrEOqcGZZlMwSTEjF2wQ7rOBVadp/TOoNix5w2l6iOgqlv3dd/Q10SSbKb9WN4TlvRgFKCpxFMWnOtG3s+rSUYn7LxOdWBBfiRK51SrKOl6QsCh+z/2oWWKqwz6D1lKwkVTvP2m4LPE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766821434; c=relaxed/simple;
	bh=nUAAXSf16LqY4jJLg1QBqhcbrUF8zBw6EwGUQl1TAlQ=;
	h=To:Subject:From:Message-Id:Date; b=kQfyX/UnbVPe7nRLTmrXqq76lcMiJqzROlcE8WIBgtLfuKfChhSlPGzyT8CcteVNKBd3Y79wmlMmsj1M0FfNsRIglWAIF29/K94L0FhrJm7z2bjBIUwSHPnRWDJns/hQ4219HgMnWS7aHSveVfvdz+6P8VuHOIloqTQ8j8ySrXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlAK5eq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlAK5eq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9859C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766821433;
	bh=nUAAXSf16LqY4jJLg1QBqhcbrUF8zBw6EwGUQl1TAlQ=;
	h=To:Subject:From:Date:From;
	b=HlAK5eq7v4Bq22WwobuflGCjjEPrS8PYtTliMfVkI7q9R4fRLq/Wwj/vH1+6gEuse
	 RmHp/SGZZJThkkyLYGN2KokiN6hJOPIUeMu+vQ6xWj4A1CeibE2MC/zuJTuTtK3t3R
	 R3vIGVgOMGu43wReyYPXcTMzJQ5CGT8zdjgZOF9xAPCYbaPh3EaffYpkQVppNVlQKO
	 9QEK2HwMD5KHpVKKtvws8Ix0CRpoXZOvZtV4BmX3DaMbATuQkmHKSjxYRbbtyHuJKM
	 BO86gOJnhMeyug5J//bVG1UonytaOo/IniWhaEsrN6ydhIZIFAavbh6KR/xflCsSbW
	 dHllWAAiE05qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B91E8FDC2
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682143358.29874.8718983550416459070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e8483450c610785050a4a0601797596c3710fa5a8adc056cd1b7031e52f436
Date: Sat, 27 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766821433
