Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3601547C0
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783773514; cv=none; b=b9WgUzr4bJ971eQg2COZchFp62Tsvj2AbV25IA9qyOI3PKG24kzgBjRGSrY2tTH9z8E3V1BVeUmI5A6km/FsDwwVXc06xp2URHV53z7dSW43ZeOwYvKNAqlsvXeZKLkBTKpAzvWDhkByD0LmlFcGocM3hK83UcJXuQPGT0q9dtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783773514; c=relaxed/simple;
	bh=URkqygC9imONvdhxmJuDlr2S8E5cRQ35UaLXC25FDMc=;
	h=To:Subject:From:Message-Id:Date; b=XgMVmZP1fh/ExYSg9wGUV02d9pihq/FL1kQWcVonzCSdawUUso9g0Oh1ZxUAVr86yjM6nVTD6DZxtcNHGTEfaevBUb+GKwwyqSNJfdr8UHjzJMwMRFgBbCd7O8B2SzQVEaeOXMp4ko3sl+T+kSB5Weuumku2f+T5bWN93iahLX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBGQ6VpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBGQ6VpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783773513;
	bh=URkqygC9imONvdhxmJuDlr2S8E5cRQ35UaLXC25FDMc=;
	h=To:Subject:From:Date:From;
	b=FBGQ6VpOpMQg6V3SwXO5mdgSOYirpC04O5fnuJy5eC51e8Nf9Yhi8MYR6KtPNV8q0
	 m6dIkmlRyalDc/Qf91bfNqMLtELK1SdXsW1WJ0TpsD+nnFp81gBmFyKpU6Hj4pAKpi
	 7zzXd9wsIva9QSh83niLnfaKu6/uu2Nvf5a6S5J7Ny10TbZc/s/gBqYOwcDYREeoLs
	 ifdoRJHWgEq14/RLRxspfc0zn58M6ORWCTUucU1dS3o0eDHkVmWlq5sXxD5MhibsGF
	 DOtFHX4hxhDY9FFO9yHHie+IokuFKpZW/kWN21CvNzR+6yoGBywJ8ehrLEjuO2uU9T
	 iQGd6NzmksPVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B2FC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377351368.21246.15201852797817949852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc548b8161fe83244603582f2429aff68ebc5fc5b0e0c903acb74ea974b449cc
Date: Sat, 11 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783773513
