Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48953281503
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764796374; cv=none; b=YugTCAPH5MYimxQ+iudFwfe5vyXYTjWt+3WRqP7jLDGl0RbrshdAbJ8zL3R4gFtztgEM3nBmC1aqrge4bVXMP90PHbt6+qksnp3UBRuP2e2VeQsaW5/TUs9ugXa3LMr6VJPp22VqNYmP1W9NXM8tgRRoalpysowqhvZdmag5y+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764796374; c=relaxed/simple;
	bh=dDgVKpEEyOtQkOyxykz3sqNGO9EhCmgp5+FSVgmAAvE=;
	h=To:Subject:From:Message-Id:Date; b=LvU8TeoskVEPAs7qAKvD0F0qDEUCNMWROQQRV5UGtQD7HFAPiVMNuUmYDm6JkeehD1i4DcFNAVeL5xxa9KWPXuqqKvEB2byK50yJdoSYCXJ4rpmA+TQ6EQr0hN+kWHxN+N1lbMUQW1TgdA9v2LOiK5AxoYHOud8T8i3xdRbgp/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZ+2ME3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZ+2ME3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5442C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764796373;
	bh=dDgVKpEEyOtQkOyxykz3sqNGO9EhCmgp5+FSVgmAAvE=;
	h=To:Subject:From:Date:From;
	b=oZ+2ME3cL9Buji1PqXHfhkycsswArjRIEiUarIZWop5gDlmPvGhTFMNgF5RH8k+Bm
	 QpVuawn73K2vxwIT0r63Vocee71hPTVeykIHIPbK5hDQX/iEGlK9HFz16EbEpbdIA7
	 nJdJee1Lih2/2jCBTpCuq0ldUph+WcF6YoNX3+w+JzNQA37OblA888IXTRYTxdeIdT
	 U2Kzo20Lu2q6++MxDupBcxmn4MPCawDiLajBW+fbnxNT8Y0L2zaRHWEmT+Z2Dkn9wj
	 jEN6VpMEbe7hb8gPKt2nRQCFsJz2E+KFIwEUMNjyXZk7BLrLmuOYZnLB/Y5aVmcYpt
	 klKtecLUW/5Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966DCD1BDE0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479637358.28857.3989705586016224149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8fea8d76e7a2bd742f562581843defdabcbe11901e74d1a3af1f5cfe8ca58b2
Date: Wed, 03 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764796373
