Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C567224B15
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767668034; cv=none; b=mrrLGdbIXBM8TSVTRv3G7dRoF2c+TXJHcH9FNnWht1uskt7TQhomlemSlQKoj8K11BlHn4hjyNfClw+2v3l8vgY3nPT1aDZbTw6OpvCQOwk/mxpCavNvtSNMXdzb7kjTXRU0vabRNITBTHIKYUZ+OYzKQK6BRBakmpRfLvsBdn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767668034; c=relaxed/simple;
	bh=OYQnJFdE/mzTz1JUNKhs9wCOjJwRaanBd5KYDWXpwJw=;
	h=To:Subject:From:Message-Id:Date; b=s5iIvmius0Xm1Wni2V7N0cftm1U6qOy43vRj9B5+UMKmQG27r+Lh4am3cbJCnOqMfSfoVKnLyEHJWsjhogSS9I8cYvrVloI5U/s3BXzMUL62RntM0w0cAPaOKk5tM2haeKObBp+AoIZmaPXbbwahH4F0wGdWC7yggqqFuVeybI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z78E4uLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z78E4uLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C0C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767668033;
	bh=OYQnJFdE/mzTz1JUNKhs9wCOjJwRaanBd5KYDWXpwJw=;
	h=To:Subject:From:Date:From;
	b=Z78E4uLxFsyaXk4X2OwSv+LF0LjqEgZKRqFFtWyKzIcSfKSFU5W3atBI4QPR3UuHd
	 P8Kqz0f6kP/sUL+rkWxDGFJtH/QmyjLKtFLZDBXKy1mNaQ7TiAZGIc/yOhEVeGiP7F
	 Kbj7hgCPO7tzWwOi2gnteeJwlc3jnd5kjWC2GWH6OTTeKe+mgJ1RLRgk8Fo4ejHDj4
	 lRj+IxFF9sW5fcDgCLZGYJcSa40pkrJtkPdGoJ6sx7yz3qBlNwXDjutfdK/LluCyja
	 ark2u76FyEymoXaHWfUiOQX3xM6vgAQ4Em9FrpzrcdIssXq0/vdcatLKiTYwY1deD7
	 g+iraDjN5ycOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC05CD042D
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766803357.8104.10544308900044525681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471519d91fc34e1fb07b91288224069434b8ff6442c9540ab7b39986a185f954
Date: Tue, 06 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767668033
