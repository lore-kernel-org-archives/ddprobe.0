Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA692BDC2A
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778331454; cv=none; b=swyrInevQ7guFcasrhMonuS67Yr2maMXPRiaugULpYQ2Fr30B9yI4t5XDVqwMf1bpvFiSriSeqUUdCMKF+rlRTWXlKD7YwOkLd/Tj1T6OInLmcgjHwOWw71Nudfu/jRl6hNwYG85i6SSO6y4DZhcSUXTWHrws036uPxk7FH0fUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778331454; c=relaxed/simple;
	bh=o1QTEhR7sBmWyCHYyA4E3ZCEUlKhVbeHvL7MMQamLiE=;
	h=To:Subject:From:Message-Id:Date; b=SvnnY0cuVXsWkwFYF5BRKnm4p80e6Iy9Tp8bal8KxjKtBSOr4oTUg1dVyFG4wlvw2NfBPIzRYWQNh81mhu9H6q+Ljn6ncERbXuev2kArE89Eb3tKiIQtJSheNZ6MY5si+mkxmhTBJhU5oHEsbenzzVZR3fadJ7BtuBspuSuss5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaJSDrwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaJSDrwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BBFC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778331453;
	bh=o1QTEhR7sBmWyCHYyA4E3ZCEUlKhVbeHvL7MMQamLiE=;
	h=To:Subject:From:Date:From;
	b=aaJSDrwWjBZABmd+bhKWtISMZOBrbKf6fE3bqwBQKPFOWi0pR9syA8Kk0LytbdTeG
	 IUekCHNhcwpl0b94vy+goEIeZz1HYlKuHB04RzYnHLj9Qoq/T/h9ISM06tiO6FtC0K
	 FDWPqWROuyjn2wfdS48FVkgUmIfdOtOh6zTeQbNERckowDxZQPoplLUFtpqh/MCaAE
	 NrmNTeJquxJqxrRmnpS7vD1X7bYGAhUz9tCkym7CUyB/BMIS4D2SJBCN60g6gzPe8w
	 xcgnRMRMzvaRD4NuDI/5cRj6u2JWuHV64Gk+vhIg3CUuHTfMJNXNIqX4eFBiw5XTc8
	 A99eOWrZm3LEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FEECD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833145377.31757.16707424276221865275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2509bd7c95cd0152eb91d5b5978c0cc4b0ce0f49985e774ab5df965c9eebdf5e
Date: Sat, 09 May 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778331453
