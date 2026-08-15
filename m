Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F5541E6D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786806034; cv=none; b=n2MN0ejcUImcHR3t0OMFjFGDo0eC14K2GNNL0CONY8aKJM5XzfAV+gLZkU1UsUwiMuIVcZUL0pkm1mCGBVIkFIhuWzTPUyn4a6qSyMXMs3wLfUHJpPxGB/Sht3J8lH+0GlFOgTR5MhLLnVyg0TQfJ9Ct4mOqqynnlefh/Hk6L/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786806034; c=relaxed/simple;
	bh=fgBp30LPPDqjDPsA1wJE8BCzJVrC5c6kaUmKxGMST24=;
	h=To:Subject:From:Message-Id:Date; b=PHpL6Auh+xcimRKABGKqitMnbdKKETRWUXK+v9oFokQ1/HmHvkEweLlS8MuBosFpwz/yjnWMok7b34e3flqyFnpIRV+hTxJXv+MyWYbv+1YHNkr2U1oRwZ2RVwEk6E8n91tmcXjIAEmFgPN5AR+RKlW4oYatvBK1Bsfttk/FWcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hm9wjajq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hm9wjajq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D540CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786806033;
	bh=fgBp30LPPDqjDPsA1wJE8BCzJVrC5c6kaUmKxGMST24=;
	h=To:Subject:From:Date:From;
	b=Hm9wjajqJqUD14E+1ZBJ2VRHzc0GMupu6MaXfRUMHaer/ca1Eak+oztEXcceN1yvP
	 wPCdKJ9+dt+I/zIw3jUSPcqOJe2aLjx5gzlJVGHsU8uBSGzxulrf+0XYp+IqAsfd5T
	 KGue8tnp7xZkZOP+so4v8uYuDfJ/wezMK1Z4nfkk1AFhoY0rc+uhZ3Xb6YmL/B72kz
	 //YS4kiOs2oNYTk273rIcFMAl0OLhWOV5djTy2KlZYwi2ZY2Y8DTpM2SIdU6BB47B+
	 sCK8bBMWwmTaq7HWoEhfjOIKyngqouXolEbwOMYY3Vy+phVPgj5tN6znXFVFOgICST
	 WfvIwBLiFXeuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1033C5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680603368.14767.4076702059395044807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44022cdbefd13952359387242d4eeac29361869a3414880687d9d292d55c5dd4
Date: Sat, 15 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786806033
