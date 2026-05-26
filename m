Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067A73C76BD
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779832356; cv=none; b=Nv81Mt17d7+oj/cuahOE4NUtgXXUBhvd4mVLzCrTBR9vHg4LPBsLW2cpMhybQ4mnmqeAeg/UDDpft1j5Z7LF1oK0n4/+S2T703zMV11O/Ug7eLcSLb0uIdDlUYqXD8eEsoBqXrx+/pLKHEm5jHPg/0lbi52yuWtdrTb3ayn6vOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779832356; c=relaxed/simple;
	bh=z2K5I0ItfbxSrthmUgmwTdGZyPSyYf6LU49JkyMtJyc=;
	h=To:Subject:From:Message-Id:Date; b=o02tS9jCcJbDiug5Ew+nl9b8imXeV5xgoAs48hFCccYHwUP1Xqbwq97VfIZ5uoqy1el49cDfWnGRa8tvVqzw5WuTWvnhtwOrbUnZlViMqR0a8oYCkzShCPtWt1ywaKcjKGt+FTAKZfqJ+8PkwkLc06bbp6/7NhCqsR36WxPUOjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzWu8jR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzWu8jR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0461C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779832353;
	bh=z2K5I0ItfbxSrthmUgmwTdGZyPSyYf6LU49JkyMtJyc=;
	h=To:Subject:From:Date:From;
	b=AzWu8jR3r5TjHB4TMDKfbfNbXL6+QU99Woo1XDrz9ukzfXBA2vPElz7lGmjh5w9k4
	 qh/3mtDf8f75olPyVMjVythjPYZQmqBDi3BB3azbenfjNxTA4CfrEGBnT5dz6dPttj
	 WHVrBvDySROoJbhThicya7HamfLuyQgC71Pmm1lmgwr2xbws9jtcNAhpBUy2zaPf7d
	 zauguAb4OX0XYX0UBpylG508/i8Lu4OL0kDfaYi5IgEw+ZdPiMAAyi9/g+fdZGhzAl
	 p6nSX3uZQOSEpiUia0zQ7DMwHEXX3M3rB2X4DFjCd56kr0o4Fok1QEx1aaYqowSALZ
	 MZZH4uWujj0DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97C0CD6E40
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983235368.6320.6165889123044152943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3931ac5907b2123dfd0b956d133513186e2165a1bae5792855de2437cc6b07
Date: Tue, 26 May 2026 21:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779832353
