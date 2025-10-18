Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18026354AFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760822994; cv=none; b=nMExKP8C1KLrpEkSZnn9shUq1yxRiXpzB4tz4doF42Hy/mAkAf37KLU+BX8znShQeTD8ppUf64fLieP8P+YLh1l6wMj/dHq3Erreffw1diOxbyUb2fGdN9+HlB9erGgxi5fI58CtlxbHUs05YwNiGUXnsqEAQHr8zF/xh4x7vAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760822994; c=relaxed/simple;
	bh=5VdnTvWTSV3f0Y0itZhq4EmOjYqdGIo2VNTltKQ4rao=;
	h=To:Subject:From:Message-Id:Date; b=Bbk/UrpNXdDz2MBAzMXFCHMKLDCUFl5Bx6wkaLcKZlyAf5fKiz8HljVv2uu3DxIoFa4yY115op3QrRuNtujC/U+MEKJ6M5+LJP1R7E8Z27+4Crkibs84M57SeSuOOCmfbLds05VPM5akMKB8E01mJ+xr+/37Z/UPjByGKNFBsJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfuFPSRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfuFPSRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7CBC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760822993;
	bh=5VdnTvWTSV3f0Y0itZhq4EmOjYqdGIo2VNTltKQ4rao=;
	h=To:Subject:From:Date:From;
	b=LfuFPSRoQJBHH4yHnXlp27LtgVT7MJfD5zZ+yKOg02fgdN59ms9vN4k+0rmbrL/Ge
	 RhTtYZvGiDsaG40otICUuqCBbW6If0w0qNwqQxAATSuUAhCocNljq4nWJFTDOSCbcu
	 ij2sa247FyDaJj8jbz4TZR02qPK5OI9VWkuvrrf7UVDNNrA/TFC9IYL80NXnnghIDe
	 kNIq4meG2LIUIDXAnzIbCLhU69ZO4Xr00tYJsvw9sraNlJwvp+5+meQvEliZO93I7L
	 CgoNQGO+Ha2nyZr6Qm/NocpQ9JvnkUK/nYFEGSM2ZqC/Ha21y9VMdKsPcn99Iw/O+v
	 CSPOqfDRA70rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D90CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082299358.16553.7500602776133003941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ae43f206eeeaf701b34b2049213d0a5eba065483201797ee46eddfe2109764
Date: Sat, 18 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760822993
