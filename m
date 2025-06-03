Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3368422DA17
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748957994; cv=none; b=n3Tny4YqyJuKiuNeMBsY2yEL/sWmrOco3BEq9+jaaAb9zsqLy4gxAbScwfCXg1xdZ9YEug4Dhck07c1PBZwwmhAONA5OwyYsSRA5qPnKA6O2Jzy58IgWhbbwQLG2k7fntm6X+Cux6V/jtIPiFKxYrGE5ziUX3ftxeEBwxC6VG5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748957994; c=relaxed/simple;
	bh=4FhCvaal6xF0WMnbu/n4/tKTObYsV1A5ALojssm+xKk=;
	h=To:Subject:From:Message-Id:Date; b=tJtCqCvd+32Rr/K9PhAWxCqgiwWaE0hCQ3nkHzDVOhg7bO874EIHYjBw2p3eS+l0HXyBrZ9BzXjQv5+q/3gNGohiQf4o54F/GCAat7brTPWUSUBnN0UV7b+jmDuzOpTZMXrN5OM2lf+9z9zs7SeMm6XRRXAuefDXypC/Te2Ssmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/iT9lNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/iT9lNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A90C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748957993;
	bh=4FhCvaal6xF0WMnbu/n4/tKTObYsV1A5ALojssm+xKk=;
	h=To:Subject:From:Date:From;
	b=c/iT9lNrLdnzWUM2ngVN46RomkPkP0qiO+OVwEb/VE2YhqEWrjyltnhA1vXRs0AqJ
	 3hoJFcOiNXYt0AZp3iETg50wnpKB/92K12tBjHvE1ve7W6fu7f1d7DDFmNbqsczBce
	 u9rXJgRMw40JRDCAuUx4K4VvFZHtF53Ip9sBmLf3a5LRUlk1L7+2obReQw0RYkwMQk
	 HqCIeN0KFbXP5h2xYhCltGRrJ35dxdXWq7ERXct+Px9s1zCfTPiEDrCW+Fl2AksA3V
	 yWaYGRHr6N9v3P5iyUHXqKXiVLKDHAbozX8QitRCoggdJtK/ExbTbWTkDBJJuUm6N5
	 F9kZpl4p4vDXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901FEC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895799358.2056.4168150752457771547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fe39ad779872f47e533f060aef415f67ef589035078a5513f40f68032ddafb
Date: Tue, 03 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748957993
