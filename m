Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1DF2C21FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774767294; cv=none; b=VC5JouoBczubiVvMr9u2B8JxFl4agKu1ERt663NRGZvrSVa4y/4jrmH2dXzxayVAa3OlARdNCborR81C1rWsAbei+M8X1Yh5evhvCvVZqBrTuir3wC3p29ZFuvmX6j/1SDKq59rpWk/9AgqyRxw1v5seYh76IXDpvmqrXL3QFHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774767294; c=relaxed/simple;
	bh=1dK+y+AhaPXl8itPhzc0pSpV2tX0wQyGp8qCixSxXtU=;
	h=To:Subject:From:Message-Id:Date; b=X2Gr/6v2mXL0FugqqnucBlOohoRMibEHY8VdV36AGJomFhmM0YCq3e4796mCzN5NaD3SllIj38g/DkyztmhZt9BQoSxoT7d9JlVuagv8eOiu5Q9aqhXWzYkQDda0/XvF/8T18IauIxamSsUOZLDvwb2B0JRb3Wd2pjWTHDaP6uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXexpFSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXexpFSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5842C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774767293;
	bh=1dK+y+AhaPXl8itPhzc0pSpV2tX0wQyGp8qCixSxXtU=;
	h=To:Subject:From:Date:From;
	b=GXexpFSNK58zKD7mmu8YGmGAPLnaUcXFxAqmke/GNWjaIv/DuWjMHRXyUFeGX94UM
	 TCEv8kTX2tOi0UOcOT4l9EYI9u749QeX+L66RJfeWx1I0ReEbI6xYRItwgJSBWEzxc
	 pOWg1OlMY8+GD0laeePYqCvxhKgs6DDYA34dmw8lDxNaJuUb5IEjtrn3rXHcRuON0m
	 Jn/bP04cfkLXLmJmwBn6z3QN3QKBEtL8akTmCC1Jmv1AeEo88ktQUC83NioPepr4FY
	 ewpcPr50ql2AbJ6cJtrgMggHULvIZTFkpGjvh8Oh6CmIR/79Uh0tESKrltWPgUzVCW
	 UMUu5y/CvAvgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BB8F3D5F4
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476729358.23642.6513787931355171879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f334c65a14d3e75f4bbde8a8b523484331bd125259209ee21f4188c6f1735b6
Date: Sun, 29 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774767293
