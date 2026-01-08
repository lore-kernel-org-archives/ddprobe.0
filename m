Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5FB1A76DE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767915834; cv=none; b=Oshl5H2dt2xCEPVz1bk9wdMpcqTevPR0+P/is61ISPXV7/UBn+oEozqA7iwk8HxuQE3y1ILo0LIeThd/97f+acWmV5clZIRW0pZWKJkqyaCo0+P9xXgI1v3HJrRSd6LRsPwMH9pWZCcCgY96GU7/DXI/IlAPeHkvtQ6HG6toQ7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767915834; c=relaxed/simple;
	bh=Mg+BG9S8lSvLHTSN1M2MevkmXJXzxcHCJpnwzhvR1C8=;
	h=To:Subject:From:Message-Id:Date; b=OMgFzeGxbwyBK0/JDusJU0NVNtmjQtCrQfwB1KU/MnW9FEeOFftNk9HVB/Ntmngk7No4XsqePqwOf0qSmvJ01gSF9YZnRI+vVXG+kpxM1iKERiyT3wTM5S6oCyNS9u1C5kE4zqg2PILnyPpSkq74H9K6tW0mgN1ZtrVw/eG7Jug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvtDVfEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvtDVfEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A594FC19421
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767915833;
	bh=Mg+BG9S8lSvLHTSN1M2MevkmXJXzxcHCJpnwzhvR1C8=;
	h=To:Subject:From:Date:From;
	b=YvtDVfEdN5UDP3o6QHUeTykmmvUvdG2IWsn0mJ9KbcN7XZItTmAR3/LqHOm5gLiCd
	 JOln+fVxpsP/wjVb6RtZ9ezkSVihpTtBfg3kkGBE5fhG7kxDNX1R3d8aZ0xlu0lUMC
	 1xlKjN4KEo4j6FGXiU8bO5WjggLZQIKFtOK8RC2y+vwtfPdccaWKLD8f5iFcbili0k
	 bLg/p0Yr9qUP8dduP9GR9XpBY4K/dOaFRCJId6GCB/XXQwPlSYm/1RnPcl1AKN4pgd
	 jJYO+Yuhj7HNZak0ymQpxnzi6TZC4ZsPT/GZujTPbHJt0i8YWwhN1oJcdW/wHsud0L
	 n45vkFzrfaBPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94368D232C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791583357.26623.18164034234679911231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045a87e915fd38be4908c15c9822ee39020cd25a655119380f40cdbc2ee38cb6
Date: Thu, 08 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767915833
