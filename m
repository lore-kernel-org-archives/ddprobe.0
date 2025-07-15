Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556725B2E3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752604794; cv=none; b=s92SwgYe4nAwiy5qjVdmq/J5awgJDpmvct/s5jhyLKlBoh5LMIyW1yl/PmEhYI3zxAvgEFr36sy793rD9tWuYmbMuUXEuncwV9IoyU8nJ+4i6/iHanZ9xqFyKo5cMXxXGpzuoVYn8MuHCC29TrLPo9pfWHjyox3GvfAq57ALEFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752604794; c=relaxed/simple;
	bh=BiyoA5BMKHOiBXMtQ48fdCfkmqGVeskZTQz3V7o9Z7M=;
	h=To:Subject:From:Message-Id:Date; b=dOP731lRD1qzCUk9DSU8F/y4r0iIX9BJEv0zXCZ8DeEg1fD70Oru4dNk0elQ/qmGl6ijZNhnPTwPpl62QCqYMFgK4dd5pCy7a80n5psKVd+v1yheh7J3c3dnzrwRZ07Zme1COKew9TXbw2rIuRh+OYoGzbM6XqazHmiOJ50Rx28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfmXEL2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfmXEL2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752604793;
	bh=BiyoA5BMKHOiBXMtQ48fdCfkmqGVeskZTQz3V7o9Z7M=;
	h=To:Subject:From:Date:From;
	b=LfmXEL2l0Bz521Figw6Py49rCHcOpsW8Ee6fYXWt1Sb+vsJ5fLWiGLFF59w5sGlv7
	 7erAmwWFTtlkvYDVXPtZAaQ+ixEcLTyoi04ESYSRf+THu6r7ZxCxKa9QNWn7fhzIIY
	 F1tB1oT29DlDPezwfky1qVtT50gUmGct8Norg3qZGKnz0vKxI2WtNnO8V5qyXrsCH3
	 fXqIN5vJJPKk0KTMv0fFmcMwuN+wM6roIQYsXrIJvF/JayvNw4cjiO+KsyW9v1H5/o
	 Ls2k7dNTRqF580+q/fJKyVCUPGhNSdgLSeMe1NdpLSAMJ6kwUOBpkBvbRMmLM6jQ+K
	 z6giFZOu+wV4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B25C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260479358.11453.1656520979285742421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce08f3466142599508117a778098f8a8d9c5799193495968894d911fe9c1aebd
Date: Tue, 15 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752604793
