Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C8A10799
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717725443; cv=none; b=COWmD+B0tjrwdgQ36Yd4X6cAkkQY1VaxXgoYj5WENl1/lXRdJNVaZ98KApvXzizSQtj4x2WK2f5tjWewbWFLGCLMRbf/FJLjk+q1j11x3DQXbeAmixjc9R74J/ZsHopjF7uign4To1OQgbKoxs7BNMicKJ3o2AI/ED/crUS8j4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717725443; c=relaxed/simple;
	bh=ogqm1QRNrguFVygquBRwRRA5Xx3aux+M01lW113OxHg=;
	h=To:Subject:From:Message-Id:Date; b=uR728+7Npr3lrYrPbcNtCCzSxlNhfv9CY7wTBcO6cNrXCT/C9jWaLXEozqp2sXgmhP9uPXYS56c63e2EZZiRJyoU6jyUiFGNqSLL717o+blj6tL//WsDX8XxZzzQrkRBQtSvj1cf7WDzVMrxQCWfRPoc7LIHe5D4k4EeC7dLzJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcBhKPYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcBhKPYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FDCC2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717725442;
	bh=ogqm1QRNrguFVygquBRwRRA5Xx3aux+M01lW113OxHg=;
	h=To:Subject:From:Date:From;
	b=PcBhKPYlq6wSfvTa9kjfEKAR2gQxJzZnrgdtkdl/k/zn2iI8L/Vit7GCSIuvDeNJg
	 5y5wEGWQCRz0uhZRmR4UvuQPM9/vlPMnE8tA3O6D9XOsam+x6XhtAnPCipq5JwOF2n
	 bC6TTcOzinOdxZIc9bqCOYt+aGdVJLw59acE5jxeXrmUHBxtTmtELsNGLKMCMkT5JM
	 nhLYJ9p5e5prb7O02Rp12HW3NVUVwBIHrNiyrWgZ9a8v5kuSA3dw8d9uOfLRNqDWP2
	 gC5L2hgYYhytuRAvAK8vGFJUjYAfXaESB35k+SA+AppM8pwjNTvNYIYF4Sgpt7mOL2
	 HC+TvWRye58Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1185C27C5E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772544278.12728.14129944256955074419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d9698a1305f2d5f8790e1c205ab2a3f27487f39a59da31b79e44cb92210188
Date: Fri, 07 Jun 2024 01:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717725442
