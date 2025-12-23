Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E873314BF
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766489034; cv=none; b=qhN0EjP0X3z7IaS+VReF7O5PisqFvDUfrrLpdBMoW4a2UyZrRRV0iNS11HP9dDmD7RNSK1KWOygACNkDaa1RAUgB0r+lBM+i7W/Bc9dNWvEcionw2MhwzirKrOxyqBmnAV6/y9zzqToon/kCUqCW79tb+rVdnLs1impKWI0NMn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766489034; c=relaxed/simple;
	bh=fvvQWy6WLy3u6xxfFJ2UUTfl4trBsKqIRIeea/dJz2I=;
	h=To:Subject:From:Message-Id:Date; b=YUbwXHtblB51C3ANleJxWBpoJ6DeJciA4+KIY2l8M/IaCqUi7yS3M0E4Iu6Mx08GJDLsg1Qcpx8P2Vc6BH4gYa49/opo8LmCfgVCIZsGCpQVUyj6AV2hGhLWzSJU24AlG0UXlWjh8+rbk7+7Fzt8DNycFI0hzFdhXk9yjqhdylU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVOtDGtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVOtDGtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BDFC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766489033;
	bh=fvvQWy6WLy3u6xxfFJ2UUTfl4trBsKqIRIeea/dJz2I=;
	h=To:Subject:From:Date:From;
	b=iVOtDGtxf0UjB1g6sbZUoKIey7eD6b+ptqd9PvGUNwyfoVrYgbuCbUi+AA+7XbFln
	 NMDmgg1WmnxAdNIVuWFy6xbiMkNrL9YvkVR13mxFIz9T2/C+r8RbQ47SxZCv5uqQ/6
	 DFJcKIvKxNjCcneYiMQGZFX+eU02qieIXBw0hjksvDyINen1az/fKuS6zZ3acMoZZn
	 RONPsul9eikYBfmpTa2BleI9UiJtZUHvWFvZOB+Zxeuyo8oIV+a+N2XL7RLCSggp9F
	 wNd0WFlxcKjUSBZuFMwzSfgD9FPcHY75uEOJ5pfP782WtUIrHApzrXuWMoyn2+hrrs
	 jn+t96F1nEo8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A49E6F079
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648903357.17034.16907774412464268939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c869eb0441c86cd397349c3960ef917e91e5126c89075e38634138a67cc93d
Date: Tue, 23 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766489033
