Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D78D3793AA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773497694; cv=none; b=NnHYBpt4k0W0/Sm39+vq7V8FI4/i27FtxLfZdKNkY00lYQotLrp+gpTK3eUB+mDZldx6kaoFlusUbWXmKkm+cuuR9g2m/HqzYLTEKmrwDxz+pNpYg4GiQhwhnS4ZBny9kZrCpPkXkupvbtnT91hV8qbGgWn97wLNVlv1RgKAPLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773497694; c=relaxed/simple;
	bh=qnbpezbzkCiU5AB20fIUDViFMS2hD99krRhV+9v8bns=;
	h=To:Subject:From:Message-Id:Date; b=py0dC22BShYMKYTXuhHiR39bkh1uy0mGaDWm/ExO+ILRKERD/j7vDJUgrQbBLI9ySgRhCK7FcUA9FRF8PB5zrVdnWfJcNm2NuGALArLslR7/mdzS3P2acoR6F5TYpl2VzqYfLok7lsFCRQ0MelLT997kzyFOEYHax3M6vpFVBEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL4n9A+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL4n9A+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1178C2BC87
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773497693;
	bh=qnbpezbzkCiU5AB20fIUDViFMS2hD99krRhV+9v8bns=;
	h=To:Subject:From:Date:From;
	b=vL4n9A+0eMUuB0B8hrqJB0j9s8ixVgxh/pEQsLuBEqmasaCjBmKL71cqT+3wXUQjU
	 WaBPGM4ke6fFvzXlWCMbeLM8W4k3hiEVmokh0N9KtmHdtV9BLOPlczUrN8ZaiAEtl7
	 WrUMnqs37wnab53mrJE0ZwZK4dL5L5e7FngdwgVBFmVaCTM0PwQpotnjWcDbe25e5z
	 rtCfgYZCPqi7du5l4fo/OH2jl2wViYC3I7O2lMxP74UqqEZiCgopf6C6WG5wVCUjNA
	 yeywXuYAsv6dMtqfJ3g/eDgqN5JsD23nEOmvx9aLRCxQVnoWrdvq/hQAr4GD60GnTb
	 mAArGqVHVlVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D60510706DC
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349769363.3426.15635112058442880190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57c5d52850dc1a5fcff18327eaeea4eae3e34f8c10834f884039c9877f04bda
Date: Sat, 14 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773497693
