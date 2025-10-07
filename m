Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A223231842
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759819794; cv=none; b=SAS9ujpjLF7S0crb3k2kvh2XY4HzOcFGKksXyqyWCPmfMY9/q7Z+d+WRDUTZBNXMRS1O2yqN3TJgSszZi4f87Qvr8hWwlCV6MYMu6eiK7esyiAa75/kD0I6WOf8/QVscRNamNVPcHFTkZDXOsPkj5CEg5NnPnGfXRU2pHNwX7a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759819794; c=relaxed/simple;
	bh=ubChYtGtA2yNgUXMvcIUrOBuF1p5c4X2NTbVPEcpae0=;
	h=To:Subject:From:Message-Id:Date; b=MgcV8x7+6BqB1uVldVCtqsPD46XBuzsrxiZ0f6prjblNMVej5iQLAW9/ERlwcJn5AeINOeJj2DOGePQvG2O7ADnROFK/A0UfSVhkvnLyRAhJtMRCfIxWX3knsJcVO95kw/C1VyIo4a51AWM4CtOnFizWc455IM+ogfDiB6ElNaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQXEhKZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQXEhKZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC4C4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759819793;
	bh=ubChYtGtA2yNgUXMvcIUrOBuF1p5c4X2NTbVPEcpae0=;
	h=To:Subject:From:Date:From;
	b=ZQXEhKZc8oKwLA+OzHqTVbwxozBPMfybW4qm4qMOBt7mtiX/Oxp97S4pVTP5zrR0M
	 kakPLnD0LPys3iiEzIdVT1q2HiunBUfG/5cBY5tpDQNieY5xPUqdauO+aEmP7JbEZH
	 /6ctumstLB/QJc8TUuLBebsnwNs5zfK2Y3g696z7Ya8iRe/+pa6ZpWsI+Fw4cTnEFS
	 p865DVXwhaOxO4UcJ4nQDeE3+Uv3GZzf+tujMxOIS0Rn//87hG4VGl82DQzyRawvuN
	 V3EJARNAYPc95OAGikW2VTmTYiyhJm3mRDUdQEcD9wCT/4NeX2Rw0GEoFR8Dd+Vv6a
	 fEOBaDrSFA3zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE25CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981979357.19427.14290321860694047777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f959a4ea61ecbe82ec29b44b963c1e441b4bf1f746703efa063661a6efb89090
Date: Tue, 07 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759819793
