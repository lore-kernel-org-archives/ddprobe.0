Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391CD2036E2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737493554; cv=none; b=F/UQaY1nLOHxTp1YERvEyIc/OjCAFvJtTsP3AHuYUHqPT7ZrxIiZs+sHbRCXiQQBH9vCQdiSlYeEgC1tTjFozFA76YfnhU9VPqfDhv8u39F0Uaw4Tl8E1eKUI1BXsQCtIR12qzehLFUkzPEWKRYDQlrfsqSe72muZoPN7eJjniw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737493554; c=relaxed/simple;
	bh=Z02bR6askA1r5EMZ37XZYh9MMLJgaL/FPiIwVxmY8BQ=;
	h=To:Subject:From:Message-Id:Date; b=PBEuTB/YUKt/ekUPWjQ+LzMvHheArmCMXtHq1u6VCXk/1XDC6uCBacIzi9TLlnjv7XOxwGhCY+BPHGph36i9qsi/QYw8ankQMVWv5o1huPThACjH0mI8dSN44oJG0xKG+IGMjN0u2cddc5bVFn6CF0sSfAyUS1yQUNYxsL+4v9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Saju9W0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Saju9W0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB769C4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737493553;
	bh=Z02bR6askA1r5EMZ37XZYh9MMLJgaL/FPiIwVxmY8BQ=;
	h=To:Subject:From:Date:From;
	b=Saju9W0XocqImccw+Loo36AYIc1MfRQlBM/jdnnBNzHEM+m56wHsPnko2Usg9DIbm
	 mMx7YX7AmozEFyYtnFZG8Qyh/j3b3tfefvzwUxQTQ97/vKTEGEOxWgkCr2ujs9aINk
	 65szyOxTDzGnhJnKMwwB2nFhTNb1MlHQEe0m5yyqr3zkkogYPCiJDY6Obx2zPHYt61
	 oF4a9Hdjg4NxFrc5eM6ZwcqH9glbNQijXZUqRT7vUOQZ2j20niVfGgrhhPdj6Amu85
	 HTmmrQFdQ37P2fl2eKaCddKZc+WnG3GW3vF7WfKpA+LrAE4OZMtYnFuhXt4XLRFrpg
	 i6Y4f98foluiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F32C0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749355361.12108.8538929083483502095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08d744e6e37cb783119e2b6c824c86354fc5fb81103b53156e5a15ebeeba242
Date: Tue, 21 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737493553
