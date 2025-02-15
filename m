Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF62904
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739644734; cv=none; b=N1a5Ex0y5GWayc4LeM5g693ozyVbunmw9EFpDB5SycHlZU8lQfrQdCpDlP6hc6Gm5ZCDdtH379C3oxSWigXHzw8xFj8DEG1FxoQTAiuSPw/zmK4Mx+k+E+t/cNEs8MNjF7KrbPil1sMu9/94VmfcJDmvMda35TZBRqjhzFmJMlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739644734; c=relaxed/simple;
	bh=BRMV3Xf7FcKJmB5QHSE5odjTWW+750WG9Z58ZFsnAv0=;
	h=To:Subject:From:Message-Id:Date; b=mbF7hQPiazfaRSFvn+7oE9fHrXPc7TyEzzzYjqznv4/SEr9chkHVUo/lOMyzgJJwRzFujracnVXo9BZrnRwEvXjeHkPzzgj0sKhxj5DDGIq8hZAAFsY0YJROyVYEEnio0sBYc1Yxty2i8hU5CMV1BMl1cGRdKE+RfSuEhRLWqGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSAVWl1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSAVWl1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB412C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739644733;
	bh=BRMV3Xf7FcKJmB5QHSE5odjTWW+750WG9Z58ZFsnAv0=;
	h=To:Subject:From:Date:From;
	b=rSAVWl1mxuDBmNVMZzAfupcBeZyFqGDbR3s66ju7bNSOqQ7pDiAKTR9+SvCeIpF3V
	 KFAWm/Pop/P4gQ+DpO5Myt7HADsvLvyphX0mkXP2noHreZEjOFUQOhK65Bm/563BAa
	 s0lY6cp9rn4IWUw9q6AJQOBy3bdDgkzfJv+ojPyacLzGeE3IsBX5aCgAJpkqGsKlzu
	 6sF5WQNVLtZQmGPCjuG2kOafhvzky7oBhCTAaPfhC5XQjcv/PM2Kf8VXWRsr93IR7h
	 aMz5hhWGXfG5Vo+EPrwuOScy4P1P1+VQpcUppIxfor76oIIIUMF4BbiRVLT0aq3cYf
	 GufJvQ9PXbWrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D24C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173964473364.11755.2351155098633376416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89ba29a528a29a14eec6592c65ca618d8dfe06ef85d149f06358129a2139398
Date: Sat, 15 Feb 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739644733
