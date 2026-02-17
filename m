Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E251339B1
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771310694; cv=none; b=t8VIhw0Z7Pwy6wai1LjlSRijkgQco7+3hEBX9PYpyg3uKA9pqXNhnbRKrbeHo3p+1V4vidAx6s+m9kn9zK00JdRV8/qW15rBZp/kMLHRAGF+HwlI3AKdDhTcBP+SuTaeLzkzts7Y3b7sPVDIOHjx3wXgT1rl0xar3GK7CHYEhSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771310694; c=relaxed/simple;
	bh=LuC9j7cf8buTXDZNLY7Y2FsAmqYzDYuQ7ubCHR4S/e0=;
	h=To:Subject:From:Message-Id:Date; b=DnsbCEwhG/0bkqFx6G6kjdoi0YlqnsBOD/HUpP7o6ELhj6zkEazn3ojZNvGMRsR4ZDJYtlmCHOqqLnz+Ghg3SL1mTjv6SI7jrJQ6gOw/FEbuW3UFp4Npd73FG2Os1cC2OIhQaJcxUcu4TMVFQxKipM08r4naM/Tivy+HdXRpfq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKBFyQZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKBFyQZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3772C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771310693;
	bh=LuC9j7cf8buTXDZNLY7Y2FsAmqYzDYuQ7ubCHR4S/e0=;
	h=To:Subject:From:Date:From;
	b=RKBFyQZ7USwMzh1T7joE89g0UKdpNSZwUWne4g1sZZx6EkSpSTfcWB9pMkr2s9bAS
	 Sw/aSDcBJaf5kXlF6yLBu3G4WbgRaGBOhfW3YvUQoUPPdPf7lE5qRTxJcEk5OTkyDI
	 VjeWdIjDdJfIWnqIFStbNUM4exw172MJayVEj7zehaVqh6Q57MS2cFi0utVHJvhmCp
	 0MfbSxamEpTqxp9wqJwonlbky5XoGhQuhruc8v10JnAbR43YbLH1UUW670NWGO3hSs
	 xh1H7C6JbwT/hJhcDbeX7pGx2+TwhVX/dREFCb+YGGM6byYGEV0NDMnoiiXcCQfe7/
	 yIVkBH4k96p/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958B9E83856
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131069357.16284.10907248132371731268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8940305db826292d72f5e9ce3cd66558d052c1d3f8627c15744adf81b0580a1b
Date: Tue, 17 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771310693
