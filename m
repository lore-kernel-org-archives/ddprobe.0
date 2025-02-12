Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD1F1FBC96
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739392734; cv=none; b=Xja/poA8euc/gmLXLaD3YH7J+iV74+rCEa7jejWNfXGWJ+CuwJ3PGc88R2oZpeWUwHRq0goiUSTu06RhU42YwUCZnced/xIkgZ+dY69Woq1CDpKpLkhFuW6yojYuDnSfD3SQBd1GyfvLMertXyjdiR0L3e7YPDx5Y/xthdG4Haw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739392734; c=relaxed/simple;
	bh=0bYykpy2dvhqGYSj3Y7NEP2GQEV6HZdd6swi6NRTvZc=;
	h=To:Subject:From:Message-Id:Date; b=iiyV/btaWi5wnp5EuA5SPsO3m7iU5IfNJDPEzCMELCnd7YhSyyq4qaTeYcaA7OKxRCAYidKSSdvyGHW+QMxcxggwWC/viIhAdf36guKa5TQwRFrUYDEiFfRi8SumEI3Pu4vwCfcB7Y/7K89qVV/2pfuLHHpeAHrI+aAX2d19Nf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUW5t/Ls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUW5t/Ls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1284C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739392733;
	bh=0bYykpy2dvhqGYSj3Y7NEP2GQEV6HZdd6swi6NRTvZc=;
	h=To:Subject:From:Date:From;
	b=lUW5t/LsTTSaRvp/IfpJPyGfo8RhZKEgoKKV2tTCsMyayGs/hykx1xdjYdtGNzEuz
	 8/ALitCY5P5WoEeqjbHXdYtZ2zbPbaeLbpKbqMU8st/XbYgk25z6R/czisQuToSNlB
	 LC8/guHRvrRagSAaYmD+1Wds8ux7fneTVkl5X/hNNMXRaBffCTHSgVCp6KE3pTz84g
	 X8PPNAHa42NtjxOkjtnmDHC+R/z0DACItpl5pbz3NnwmQBPEqp4Zv4xPdbO/eOUu0I
	 VEkrQccOfEF4pqboF4vp0AmiOhGUlGbHqXDcU+hs4Lpq6xO0U+CW7U4BwpXbLjwDLj
	 iw/UYfZalNuFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A104BC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173939273361.16621.12173926148486401230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42dd84a33de3728ea38e80c29493438a6f3c4080c87466f96e5262a2b99b8fb1
Date: Wed, 12 Feb 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739392733
