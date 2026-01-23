Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150903115BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769185434; cv=none; b=ucyC5c919L/6M6F4ozyIR1kzHqiJUX7PSa9gPDec011AkbatJNsHXzpVG4wWcOOBSRuFDGTgKeQfK++2jLPjl4pEnQ5socODYNn9yvUZChHg+Ws/zkPeeJg7FwQ4xUs+apBvuU5hf8ow+OmQQlpzrKC/+R2f4lIPd/GAlTrhz08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769185434; c=relaxed/simple;
	bh=FfNp4PmYreFWpb6x9Ah3Ynm1YQYDKyAGM1Bj10IfwMA=;
	h=To:Subject:From:Message-Id:Date; b=eE68I5So64gZIpOsA+bYOOvslNg/7yjNEv/IkIDB8d3SsdmQdk0DKl14/N5SBCqaH3f4cNuSaQ0MQyQo2hdLMeR/6hnFtVwO02aWE8HGZCQdZ/14eeJJEAGxCBs57cs8LI5ZOXITTTnK90SxborBqQbhr5sR1rvomSsSFPvD+1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHWIohxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHWIohxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E6C19421
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769185433;
	bh=FfNp4PmYreFWpb6x9Ah3Ynm1YQYDKyAGM1Bj10IfwMA=;
	h=To:Subject:From:Date:From;
	b=NHWIohxChqm0LbCmXPRvyMqokv+HK6oxPLqjAFcucvBi7aFD+COM2cGTMGhVFtm8F
	 Tq+YOXvaXI8JaqRIxVLfIKljvXYUS6FXqX/wiT0027jZ+7Fj7mAspBqaOKcVFR1FpD
	 pzNN7HH0pPNMnWTLK7mVW8Gd3k3JBmfC7hK5ICWILxeg1CabIhwToRlWNBbi8o3vcY
	 suWSONo9hUIpPUYfg9imZdxKpJsn/gNn8TC8U8Xps/KXBWqQaLHS/28wYdJRydAbU4
	 uCI/TsqfXEokGRU00FcdwTjF2gjoIDTcwOslkthzGoTTDH1oZ3W8qRNewKIloJGzuh
	 JTOxu5ECOt/Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA1D74EFA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918543360.13941.4721312136578625170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6970f82378073954119ec3bdb73013c002841e6e01cdbb4db71d051ca06b35d9
Date: Fri, 23 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769185433
