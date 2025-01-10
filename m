Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1731720E02E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736517954; cv=none; b=l2RlLdihxXI+PP/ouVjeGZ5WbGT2CF61ABmcIWcdQpEpfqZFZlNdoPRRtd22T0BwZtr0AUu532QcswBIEar1cwP9GWvWYNENX1XFwHCOmSTZCU4FvP193BUsu5J71Qf9taLLS7QvygMXvFfCjDLzcAQYOavbHNBnvgl0Y3JHfB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736517954; c=relaxed/simple;
	bh=MVOa8oN+gnOFINRnMTN5AZV9EY2WPNT/6tPuuoXyex0=;
	h=To:Subject:From:Message-Id:Date; b=BGUcoqxwhdCIGd5i1uBNmD8tt6f//jtqv3NDbwiCXTYddvde3OhcC+lM5nOdpaIg6IROtlaxQXI1QSpIL0sbD8ny99zzxP12xnQQ7r3iG3XLNvU1aZgeJHhojdtEv13Vv3zy1VpgvMDB9Ond2CzcnK/BDn/el9i4dGY3DoalDG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvYHphj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvYHphj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EE9C4CEE1
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736517953;
	bh=MVOa8oN+gnOFINRnMTN5AZV9EY2WPNT/6tPuuoXyex0=;
	h=To:Subject:From:Date:From;
	b=ZvYHphj/Fpfn1/SCNw1E9BprZosxQyxrG8nw81Emw6HkUx5Hhrq5LdeU9h+XJXk59
	 9B7HycKA5Utz/s6Z1DK2Ca2/NO/50ftpgVw1GfOLNojEOIoiFjhFLdySWLpgtcVNIw
	 OK1Tqw4LwCKwfq+OEE/prGeJL0v3JiEkvnEY+EGjGubUX8pRBIcnSBpz/f3Qb6XOfD
	 kUEt78E31FqrFNxJB6xpDZ0P6flWDd0k1JjPt6evfnOrqb+A3wlz+L/hzW/BSzGjsF
	 fcrCsh9eO+sDqz3P2q4+H+TCtYBMCjh8ATTXyYg6pSaFfYGNxdfHAxE2UHmgbMlthQ
	 stLqg7hvb1gnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E7BE7719D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651795360.32618.10649719891724851184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61107f07674294b19609253119a6d3937efc3926400d6cbe8b4372c022f85636
Date: Fri, 10 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736517953
