Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0A52773D5
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755538793; cv=none; b=dLQ4KnhePulj6TvFTr+oXRJbF+HHR5xK2MdNx9l8FinkFU9R9qVh45Y2Y8cDocbuz2ouh2afjqk3jWe3LJdNyVC+B11LINy0gPngeHhvfFabcf217F0Z5m3OKqa2xScyKpl5CiPNC6vLI/ucD6R6O+bcqXHltSQk+7kdz0/wk/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755538793; c=relaxed/simple;
	bh=H40Xsm2ZnKHKsX9KHr2HXwG10rwzBq4zYAj5ikwFeaw=;
	h=To:Subject:From:Message-Id:Date; b=kHAuxTVdRNTIRNTVdl741pPkGvqjX7WKTCPAxDVN6h+d5Tc6ByRgsjgNEDVPvCFqKrbdecIAZP5WfVijHMrZ+toVhD/k8bPFlg6yCtkuwkoyUOBoRMLStrVd/J7pV/roQ4aAGBvyQ4Fe5ISG3VhT/ueZzL6rCECDs+7wG6RjSTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLA9WxmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLA9WxmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F66AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755538793;
	bh=H40Xsm2ZnKHKsX9KHr2HXwG10rwzBq4zYAj5ikwFeaw=;
	h=To:Subject:From:Date:From;
	b=RLA9WxmQM9M6VuDFdd0Q2qtLj9HgNfTY8bQckmq4Cof5ElpGx1HH111UL++R+j2Oe
	 PcLxNcn9TIBrMlUb4uHBf4H4Y6wn+LhVvvHIDL13gy1Q4fzy4PWOmBk4W4K49WgKgI
	 JRRMtAhZg57usNRvAGzQZgciENrgYoVP5jl6eia4evVqeJDequ6Kt80KlRjdXldf9t
	 u93hia5NcNtODTvR5SAvO5a9MnKq/W1OH+ACSx4jEsDcV+opCYWefI1f9t6AiGjzIr
	 Dpw/14A9L34obUvDL8vi1wQCfxGUiEMXE2bKnvySkTw+iVZ+YMaLBS3bUUYkluVX0t
	 zXY9z1f5g12IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003FCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553879358.31712.15517031598858354917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a319173432ba3c4852cc2e99dc7fa839c0553f825db06a31f9c685998fadd5f5
Date: Mon, 18 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755538793
