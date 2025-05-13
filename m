Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326A24C6D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747096795; cv=none; b=qx3vOyZhTKHQqpNrGwn75h7l8mAhc9jutTS1DRKCOaNmQgredZ5Gy6IHJH/NjTl1YSYTctWTAhOT+y7/1CI58KANFTZIIOu03RU5RHrlLZGpTGkUiNFrA44ypCF+rvVqCCh9GChdtrfNwBtAfpwCtfmhVystXk8QWIjg5Ewebg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747096795; c=relaxed/simple;
	bh=giLRF+n2EF4RuEAkgbfWqQQygSoGXeMnRXffSkOMbkQ=;
	h=To:Subject:From:Message-Id:Date; b=Xi1xcbCyLBgYy1k8Jgm1RytyHYlop842mxsDZlf6p6z6nTvvyNcgkTyY9JkhQ1X0qImeXtaH7dJ3uGURDib8o9XiNeFzyoQNAHc9uFj8v6sbXA4R/ac9SE7q1mjH5B8S7+6QBiiTyTksTsVF5bgoUJJOtNvgESsgl2EjQW0IBCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgVqfFgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgVqfFgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B92C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747096793;
	bh=giLRF+n2EF4RuEAkgbfWqQQygSoGXeMnRXffSkOMbkQ=;
	h=To:Subject:From:Date:From;
	b=MgVqfFgbtA3h0LBdTFtSLoSjMh1MIW/N329LaVJ5Wgq13dj7K2s8dlwC3GjGm33Fi
	 I/B9Z/BJZqFlcatFa6lcYzlNuYmgB6qoa9JA2TwT20n6bsRRpN6ja6ODnS2xvHM6GK
	 BCkB5Y9g3nyWTNPSGDFx2p3WoJNKka2htJiPV/y/RIc4aF+gFRD19fPMjsr7HslV1U
	 M2HbPwk6NGXc5u69C2TIaN9QaJq2PJhjmIoS29iiFjN3nYSNpIpwlisPK3wJMM3EBS
	 8ryKMXtBjcaoDdjd1gtpFhGNf/8q0PqVLcOSo+5gAFxGhashKshUr3qMfVx3yoidVF
	 xpq5LjSVwKEdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236DC3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709679357.15462.14099673357038040849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0cc83e87a297286540fc583e128625e801f8b8129ba68369bef9f3230ac0c51
Date: Tue, 13 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747096793
