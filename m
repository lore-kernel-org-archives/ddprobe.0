Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394E51FECDD
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746444595; cv=none; b=kCLDO0OaqgzI/0TqdEQNSYTWnI8Kr2iLr6CwXcq9RUbotRU02tW6wa4nUUlKURp9eLKdZf3L0QKBRgphcygYMMYehBbABbZ+I5zXKNvKHA0uStYWYy2ZkLPy74dKZQL2BHCi1e+HSAytDn+XQtL6au/SIRg0veLtJxj55iVvm7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746444595; c=relaxed/simple;
	bh=Do+kTEzhYB3r8VNXa29mglOEY/oBoGuOWi//2IQ4p9Q=;
	h=To:Subject:From:Message-Id:Date; b=PnkgtAr5Jx9+qDvyfv7QEk3iWZ909Ifqnhd0rdmeEi7uKe3bYddk9aaWiKV9mq2vxWIXb4PPVWBMjIFr0METjFiZ+iusDhJ0C/tMXc3MBeBTp5XXW5d5kmePHExSgp23CzcplbgTkXbilogTeMlY1sbJMWQVqXFWO6kZbwYtBbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHh+kbJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHh+kbJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A2FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746444593;
	bh=Do+kTEzhYB3r8VNXa29mglOEY/oBoGuOWi//2IQ4p9Q=;
	h=To:Subject:From:Date:From;
	b=UHh+kbJS7t8fCnwaWcnTkGzlKYULV4E4Olx2tqlhmy51i9sdu+YtdvyaUteWkgh4j
	 P+fjdH1qcPtYtNJ0BN8wLU2970qk6vPeeLa31tMnLLqds9EcpR1NoZEX+WY1VJ1NfP
	 RNbnEtZc8OLNQPpB+XCc25SLffR+Qb5YSXg/yC2SP63hYv6BeGujz2LdDv5xyAOg+J
	 RWpLT6f6HnITIi0QXDu+MWahnTMIaVhz6N0X3gRsn/nyqBEGDGJ14X3U2Dqta1ZQuC
	 8icobVi9sONxeW5EYP3h/eKlg5Yg3wngdaB8Puzb0/sXrL8JyrJNcPuKhb+WwHB9TN
	 xzNWYsGLudDIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93784C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644459357.9458.4882887979719483899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68716382c06852ee3bdaaf0f7bc79ff703e524fde590ea680021193712b7d205
Date: Mon, 05 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746444593
