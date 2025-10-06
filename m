Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2AB223DED
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759738794; cv=none; b=LNuOLg6A9rsfXW1TPjWXDzjA2tLt1DoL43lgVxzo2IyW/LMKevkaCVTdl4uPAcYWmDrrxqQHhFTTAFaj46J46vAonZiJn3puTYBn3X6wjIg95qT/cL6EQWxrAvbtDlmWF6vH3Zcs9/cKuRdEnkcYT4nFeOKG5Is+jWnTxnAuMzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759738794; c=relaxed/simple;
	bh=fWV3i9Og64Mf8Yk05U1yViw0zUJ+bFaY0kqtHlOfRjE=;
	h=To:Subject:From:Message-Id:Date; b=dWdADzumLNTAjNkFOlxs3NarXtxpG2NwLPXk8WdDYlC8rXowXP5cq+zq+EeDQP3aot8QtjJg8qt9bBun7xZvfXs1HwviE++cX1xvq+hBP+vOjXEgcyjIgqX/rPHVj+ebPk1VwLsPQamcg3b0/QeWgjFYsjSPeBjj+p1UPaK0kfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Emcdt1H8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Emcdt1H8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2580C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759738793;
	bh=fWV3i9Og64Mf8Yk05U1yViw0zUJ+bFaY0kqtHlOfRjE=;
	h=To:Subject:From:Date:From;
	b=Emcdt1H8NQ3fGIFmPgMIRv+OzJQc6lvubSTuWqpwdPikCYXTUZ4kHAfp2OYCwY/y0
	 p5fetfO5Lqg+Rrc22z5wfSl2HiuAqg/kwbLHqrqELlJCOu3OP9QfpiwJ0gp/nezavb
	 tUgHXgmOQ/CBmznRG/N0svT8617VSS13meg+AQSou16+JMfAVqqojn0oXvAKSO3PWL
	 ZNwroFPYJbbcFApwKFILlZYJNXRg/5eh7J6A8tPtLyCz/Qt38g8f2o4+Yggpwc36Bj
	 bVZ7nka0qDnZRF6jzQ//M0IzpmxWJlYFcbtEnajCCciN4WIdzA/ouuHlDLt2+/rsGa
	 lIqk4sa5TbV/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95FCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973879358.8014.814741247122950153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19f827b898127543f90ecfa9ff9eefa956b5215e6812063aef1e113589878f6
Date: Mon, 06 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759738793
