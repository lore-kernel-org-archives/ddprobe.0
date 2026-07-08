Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E5F400DFB
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783499315; cv=none; b=POHnRFmWrORZHAq3RNAHRUoOt8l9+TcfHtOhYi1Dpwfcfn5qGsowNXHXLr97rgO6tZQdf3vwdSvQ1Gt0UcR7AE8KPtDMJHFhMzbNehHKJ2O2ufWqo5taUX6G1cBe11841d8pNld/eFbTBy/A4mav8xAq9+/dklH3cf1QzCLlCZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783499315; c=relaxed/simple;
	bh=OdFOMAyHy3MRK7DXJbVQGwMSnIgINvuLivTAZZ/BUhg=;
	h=To:Subject:From:Message-Id:Date; b=h9p67mhBsVojsKExBLvQ+Kk4rBNyKcjidqIQN12yXrotBUDte/AyFew4Er12eXNgedSuSV4BGd6G2HcB1RyUOxojX0exyoQ9D39eRXwqYE7E9+wP9ioySbF1XK/j/KuVtD+zENMI3tHucszBqld+NhExg5szAiM1O6MJwEcVK3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgWUoGKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgWUoGKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6268C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783499313;
	bh=OdFOMAyHy3MRK7DXJbVQGwMSnIgINvuLivTAZZ/BUhg=;
	h=To:Subject:From:Date:From;
	b=jgWUoGKgHi2/XhaX8QfxtCS3v2ZfRL4sh2kdbSaRy+b6iRbmvLSlfflZbU8l0OXMM
	 w8Dgri1E9MjwLiP0arqK260Pqucfsae8ZinC+RRoFXPwPXRlx+9VA0X7ytHuzKoFfB
	 HfhmlmKPQ7+qUDZiZiF4S2GBRSkZtkxqSy+P+n0q2HYxj76KLh8mpuekLv6pAAl6w2
	 B6XAUKP6esLSGU0Ysey8KyKwnpgPEa/LRHF6QiuwXEWbAsvhPPsNty3wiAL3BxEVfy
	 HanTv4hulTO1J3V2uto13vnPnNRcjhKdtkR5S+Hkk/YCtKPxKB5W4G9/mRO6AcL4NQ
	 7bgfNwZ5kqfww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7D7C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349931370.7406.10934886748634942100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7102f2dd2e3065cc83b3c492924b795cc6873699b199deab744296191eefbde5
Date: Wed, 08 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783499313
