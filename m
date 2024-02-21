Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA0B3BB20
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708503497; cv=none; b=dUWI6CNVAK2Fsr21WRs8VY7/bwmQrHCL7+e2pxJI6EX8JDqyHEJAo2xPhNFchUhDYLTvC2nSlvUwmtEgZXXApJVURDaP5IPRpP7q1e7ay1f+yRNZoYCDj+JIFMyGgFlJgmU3OV4XdPqXpVlDhzPd2WisQWxj4x1zU/CqpPoyO4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708503497; c=relaxed/simple;
	bh=Dt2woGGwIallWDESUiBSzmjWV5RueWZyPHKpO4l8360=;
	h=To:Subject:From:Message-Id:Date; b=ZzpQFzi1d/gU+6vkyMCWNV9T7UAgtPHHDz8ZBHr1S/Qru9piwtfZUCQIF2S4umDVOIr8t+PF7sZ+OQZ1RkteBw0T3RguG3MtDTXtdAKjWFpHrD8+e7Q3LZZU778bVsj1o4n70ZSXF8Gp5raLsFg/qC1Xc0f9ObaXmKs/WCFG2tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUiCmIQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUiCmIQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 858B5C433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708503496;
	bh=Dt2woGGwIallWDESUiBSzmjWV5RueWZyPHKpO4l8360=;
	h=To:Subject:From:Date:From;
	b=DUiCmIQXIeeOAJAID0uhL1Lj10vx8qj+ruEgXpQH2/jhO9LUwuFmybLLWDYcYor8p
	 rQ7sOd9CGUlaPKRPBXPBqFdlajdTpHVEEfcnVaZ44qPaQQdeBhiK/8uzp7LWdz4UlS
	 SjtUl+IrpFpXi6wWVLikGdGKECu8YQqmgaZhCA23AEWxUVEiyJHJdPw+1fIQ7EIZyP
	 i2p/w8T1GCaAUnxtM8U9qB/kHllEu9Z2fAb8hTMu61jwICy6EgqPH8+2Jag3WPw8lv
	 chjFanIayla3i9WheOlGT7ini8P8BZ1XqlKBr2prjuBA+O7rRI2daU9q3lnogTyIar
	 PiuMrydV0wqFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6877DC48BF6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170850349641.30342.8550378560871479268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfb3721f4f6aab626186f5c977739481d3cff2950647944378ca680a929888c
Date: Wed, 21 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708503496
