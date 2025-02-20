Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D715B1BE86E
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740039533; cv=none; b=UtyaybCOGRyLqHNDM8fERTW4gPdEva5pN/2oe+QeaJmwDi4MkXev4jIsaMMcZmyIlAQCg13NoCPQ5IgMkatULFHXIJyv7pa9KoMSOd+Mx+D4OeoRCFKil4blpxK2poliuEQGF/1lpbHAh49VJiVvodq0vKXjMgZEEx95i1O60WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740039533; c=relaxed/simple;
	bh=QmgGlnfkQe67fxiTPVdPXUWR61DG+ZBuZVsz2YuIkBY=;
	h=To:Subject:From:Message-Id:Date; b=iA7GcnJ0Q+Q9x8XwWix34qxvbzs5G9TxTuOAdx4nOJCffGzAUx8a72N/VqdSGEa7kIO0w3owTD0Q7f3dTevGDsNDTHDYaIhpa8Shweucgk/wTzV88zxLXfOn7NWacLHIMnwApFSO8xuzCpmt2zpOkbHTewSfzo6RpfOu4S2Su+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CS8Iww8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CS8Iww8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD50DC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740039533;
	bh=QmgGlnfkQe67fxiTPVdPXUWR61DG+ZBuZVsz2YuIkBY=;
	h=To:Subject:From:Date:From;
	b=CS8Iww8r0FlvEeBDO8/iJZR3k4FJNNi6vBM4BgV5cyVhMfl1pBEGni4cipt48KFfS
	 GO2WsSbIy10SWmTgTzZHmiXG/K6IxyIzX/lpR1MkBdkkbhqhB18ii7A0vorIoyFGPa
	 fMW443qVe2STqRD7yWyI+Tc4J4biRN9LWR9+cHJxG6YY6Tiwg+Fz/H7MJRGlY2qViY
	 6NOpa5FsJ9mk7DLo1cPvgYWN/Eq5vUvH1wY3KhWQ88YhDNQifVEqVcgHA0UbjrcXpp
	 Z/XWowukPjfzb/7SUF/mhV7+q9LI+m9vACymg/JtHiOhK/FPvZc1KR7lGMv1a4Ouhk
	 6QFZTVPOHRN3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE2DC021AD
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174003953362.15806.7953690793644098111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097fbf0361a72989b7a1b4148084965776c591b712cde4693fb1840f30195c5e
Date: Thu, 20 Feb 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740039533
