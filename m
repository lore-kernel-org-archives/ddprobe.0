Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D9B26E173
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769982834; cv=none; b=DCslvE9seKfqg07Ql2MbGk42r9bXDA+IfO8JPk97N/1YCoNla0yyAIpx6TZx1ikjBerVVBm8/Jzs8com/1asyVm18O0vUqNcp1e4MmC4nD04THJBFXExIt7t8PfMaWgK+hFSH4PU+k/fr8RYA/24yQkgR6O6jrIkXmwVHqKWZeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769982834; c=relaxed/simple;
	bh=xn0JIhu7pXiax/siaq/2YtRGa+QLCpk4AJX0OU4Kx8Y=;
	h=To:Subject:From:Message-Id:Date; b=XfPX8iqpOU4B8PTMk1KhGvhzEQPg82rTKIi51kQlXlGLQeLZjbzLcMb6gndAfg/4RQfa2uGShctEHTfv0Wk1PaVadH6g0ATln/3UMrEFEPp1qnOEscnvQ+Qc9saEFx2kZR7JTui/MyQsv1j+IHPv0qUX8UXyAlseb+q7L1qEABM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6E62zfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6E62zfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0D7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769982833;
	bh=xn0JIhu7pXiax/siaq/2YtRGa+QLCpk4AJX0OU4Kx8Y=;
	h=To:Subject:From:Date:From;
	b=o6E62zfrDaW3CefR2uTRt8QZOx1D/+p3IaJs6JiiDkwVDhhevLSCH0YOAuJmbBTkY
	 lzdNLPyi5LY4H+TSSGf2OwcM8LtdI+mfPpiNUYpxeM4pxLCX72ckRcRSYm4O+5M4GU
	 fy3YI4sDDaFSX5Zk/WwLeVqEEnH7uOYUJKpaUT2EnHq/Ly7lsePh2xhFJtMEedLb76
	 2csv2g88A9xlWPNlKVzmHn9HK9MSW36dUNi4LJML6hFn50nXkvmtaWHW96t7I4X8m4
	 RPMjjwyj6veyaQzJlb7F5ycW4w6rB+ADFYFMfNtC34el6CVUAmeL5AikMABmKYGbJy
	 wCvuJkr5DpHyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30F0E65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998283365.11464.16769111710167673232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6ba2a0f3f1cd69e167f78dc31d7f91191b533bd7476685cb75dbc5091a8334
Date: Sun, 01 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769982833
