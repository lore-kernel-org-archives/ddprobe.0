Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB482D7DD4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773152694; cv=none; b=VcwZjdtnge301DeAIYa6yz7RqdyRt93lQ02IWGU2+sqZCzgcXPcrk7kgjwV0+qXhcww4lRjK4dxh2h0YkCP73Bv4nPoAm1QPXNuDipO8Lkwt1aSigeFWj2PYxFxtqaOfYKJfaIlcvomKWJbam2yrowGwjPzll+p+xLMqm/Zms/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773152694; c=relaxed/simple;
	bh=DzvFUqWfEdnt/e+3rMaKucqNVeNRuL2SzY5JmBgOOwM=;
	h=To:Subject:From:Message-Id:Date; b=KxsIzcqfZ6+l2qY0/bTzZR1pANiSYVuDnhztP9tsc7+IjEYW3OMXFfCy7CWPNo/bxJ+8CgdWdrGBPXGBqee2/662ac8Hk88b8d38AVB1hA5rzdK2Z4It+bz4+A3OJcMf0OLoPIRo6VI+bXpd3TGlWqs6qVDEy22jylNQXBKwewk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHa6UtRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHa6UtRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F99BC19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773152693;
	bh=DzvFUqWfEdnt/e+3rMaKucqNVeNRuL2SzY5JmBgOOwM=;
	h=To:Subject:From:Date:From;
	b=FHa6UtRsbhEtpry7/iIQZYCNAz/ALChqMpy5inL2JONXEb1FMvePwUHkkIyF+6ihK
	 vn8A7VEe8dIvEKRubmsZRxQGKtDbeZUB6urbS4pkcfPVzyLs4Rwr+Exjj9bsbAZDPT
	 2xEAnzJ14NrLfgHRzV3x9friWMk1cNxi4jRlQBDoI7gBQwV/ba/M562InkOTIgoDC0
	 H/BIZdEZDdv6dXffyNagcTl1i3YLZUHJZF7gvjido2DAJGDfbw/hIYLCD2AA43LXDC
	 8YzDZe2kRZpmR+hFKTjKZnhMImcRetmpHPu7oDHpkA3/x3U8nkoZtzxp7mlT8C272D
	 eTIbUHbWqJNcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90194EB105A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315269358.18752.15964268112285280861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b630370f2c6f0e8161d279e647defe2c6dad64ffb05e5e4a96cdc3d8b3a1fa07
Date: Tue, 10 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773152693
