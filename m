Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3271ADC97
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771997694; cv=none; b=mRaxNJOMWbi5vZYMz6ZV79Bhy1x+x6CmOQZ/fALBMAX8pKNdVlR1uX92XmQ+wSyJD+WRRW5l+BwTGIQoYkK7uPjXrFDrx2OF7EM0c3hDxmNN3tSJs/KxyzFEcLWP1N0v8bAN36lyK34y/WfWNq2oFYt4OdR9sRe7TSW+1iEkwp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771997694; c=relaxed/simple;
	bh=qutod/SkfZfgJ7BBD5iHuyT0zaHd0p0ChEK5l2fOLI4=;
	h=To:Subject:From:Message-Id:Date; b=T3bimPd1DFOH7T+LfARYJBTeknM39F02WZnzdPR68LvYQYSVoC7C6/XbvWbw2n4OG3Idq/0+XhmRGFlaAhmEAHauOdmBfNwdKV45tffNB3owuTRf2LDK82jWCNtOQfcTNORvB/TOqTHIYmBnEy8kPOCOrqTaUf21qLOFoBDE+LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqvpTk+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqvpTk+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A681BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771997693;
	bh=qutod/SkfZfgJ7BBD5iHuyT0zaHd0p0ChEK5l2fOLI4=;
	h=To:Subject:From:Date:From;
	b=kqvpTk+V1SwdhwyfRHWPwC5AHLmU9g1Don7MhMrVRNzl+Z/DM+PGwjPk6IjD8F1Fn
	 qCuXbpFmi2Iy/j8fb2igKoqiViokqRv3CgYeuc3tluMKdiievzwQXCXlPsLZQP2ZIG
	 wYQBfGW4rDqwQ80jX/c36Uo6sbRXA2h1g56kU+haZJCPhccPO1j5zU4bVVmggGOoPl
	 ecQxnB/F2q4hm8ROMwHCIsnO76F8BEKtcsd7jMIv8gxtZd/guTlYAH5vl1RvBAYoRD
	 N+146aD6YIbarqbGKt9yPZUODEuKFsBeIWklXxH8epvIMXiRb3PjHvvPgYAHnKw7xE
	 qbwCw911YoOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BFBE9B25A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199769358.31496.10702731255329789832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d497a6335acc297c5b7551dc121d5dff567b3391ed660ab0ac2abf1ccdeea71
Date: Wed, 25 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771997693
