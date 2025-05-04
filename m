Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0C8137E
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746332395; cv=none; b=anMswsHbpHZwEZL2cLi0zIfmRdPWs1upVzaO0O1bpnSODMPKjT1LyOJ950Ci7lAl4ViIAm8Wy99352DxpamrCw7nn4ZOF+b1FiTCsSwPSd7/9wRCOmjwNsi/+Y9JN2GMtlB0YP7eO3Su/6AMy/ecoDcudLESfR2DxGHZzykXiLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746332395; c=relaxed/simple;
	bh=+gQbBQZkv1NUeK9MiroZDrfBA3If2EeGn9Bzqv+3nHE=;
	h=To:Subject:From:Message-Id:Date; b=gf2unhfDLy2ckmFYll69mAC4g8k+D4OdU9p0ly/H9+IgQWtxWEBc1u3GO+dQ7jX2HVaF9HQn9OxaoOQva7ObqlvbrM69JDU3zIUc1W6m3ElSXaqlJavx94T9GKonPSinhvhyDFKFrVsHW7I4y64rWpGa9dlwpFfMSFSdYKspHNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7L+bTtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7L+bTtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FDFC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746332393;
	bh=+gQbBQZkv1NUeK9MiroZDrfBA3If2EeGn9Bzqv+3nHE=;
	h=To:Subject:From:Date:From;
	b=a7L+bTtdzbcrfplqoK9RhOD0FF6um2yWbGvVDUZ8mUoyhqX0Vyd7jm5lh9lWlogah
	 ECWO9U4U0Oq0RNZuIExS7F392sJBPf8yM7OoiNsZJ/QT09WefK0vSfzzDrScbS14zB
	 ou8YofRtAah0hM6E8UMKoBv2LokkHnH2NWEQQl3Gg0fgnMNRbnQPPn7b0J29pxwkIy
	 9egHJKnUpq1o8bwQ/pnrSxwlwnF35AHCZdwO8MZQS+IG9yKylqPKtDP38JFx2YI1ne
	 HU0kQSflW2zxo5e/++VWnWMAi8WwXgkglqoNLwGzrwpJbW810g44y+0m0medELdsU4
	 +hLUIL8c5BALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6DC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633239357.8399.2664789033287678152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f380a13a9436f3a409a2ca74535d2bb96e3f625f3d53a2b813e2efe851c2f3
Date: Sun, 04 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746332393
