Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303B715D1
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719018743; cv=none; b=HvEqHxsUg6yMCh4iTRIIk8dEXeLb5aBWc2paD1G8HgJwuPTxhsdAr7K2jx3jPPbvLcwVN1iRN2oxfnnYVyfPNuAhGRJrldbU+EDheTV2bLyayU4M5bYeRDQFEMFgXTWjPNbbrRTzX0OZxHiYCjtxgmjO0ZfAyXfuiV+5SVUPpuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719018743; c=relaxed/simple;
	bh=YoKek0aF6nFGFmhJA3t4wC8YdKplT4XyyIfr5jPGRHc=;
	h=To:Subject:From:Message-Id:Date; b=HVAApoFvtdyPjRMirRnxHvCWzMZ2jWG0CZvxMQEDCbbyaZdZEDjqW4dMAUHsItUCY7KHdKtwNAVgH3zCyPyHzlh2KD5lySMv1OIKuL2SxSaZwo7jY8T4pr2nhUWSm2+/wmM74RAc1YFrbhb/eyB3KQOhAhUMR3RsrNBL5NYCDLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7gr9ekc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7gr9ekc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF65FC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719018742;
	bh=YoKek0aF6nFGFmhJA3t4wC8YdKplT4XyyIfr5jPGRHc=;
	h=To:Subject:From:Date:From;
	b=U7gr9ekc/xggbdp5rrsoXakg28melSrajSQhHlssFwBrKtQmn/XRfzpYH6ExnlMg/
	 +oE15ptHNKd8kAHhdkRI3OFhI+i4URcIkSikXtpYjEezpWqIqnQ3phIdDOHQ9Rb/ZF
	 XolsGqarIRl/6vm0S2NYlq1Pyk7rAKOTbwmgpnmiWdjObr/T3MDNTfCdmL37fpS7ja
	 /SbVCZTfYxKwTj+7ZWAfjV6sqkFeMPelnc1KP1XOoE3g0KT3r0zTj+HPDQqPHzmNHC
	 h5ovK4GRCwRygGVX2w+OBd0b6u1FXzOh8kmcR65oLyoaVnRyNCus7/PyQlN+fG1ZRL
	 lbvyS3qeS0fMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D3BC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901874277.3282.3339765845061183527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9e23169d793ebeb02791e643edf6df0bbb2a536296f0adbc9d1f785c3e929a
Date: Sat, 22 Jun 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719018742
