Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18403466AEA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784738375; cv=none; b=sA/dl/xeIduQmvxcIYc0Mx59WfgxQES97EULNbCFATYl4g8V0mQz/TZ2RlvqOpvIUdtoI7jvlXAJARhKFmR4+SVeklLzCXEhQhtc/oUMcooeyoSZLEoQqvjTvGItW6JpnCSIBWJIxwP50H4BLQO87lZIAVGpduqKXyts4ni2T68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784738375; c=relaxed/simple;
	bh=LibpVhxV6Ai5vNs0wzbIRGLzVV0O/D6x+4GMo5oQkwo=;
	h=To:Subject:From:Message-Id:Date; b=fu1Ey4GhWs6lPnJNSuHB/kJb3on6B28zLv2XjpS9oIiwyMH0GWAg2cZLaK2SFR0GmTtiwuQrqpfZP+2u2hzWy8MXK7jPajHX9lUP2or3Kloi+gWvFvW18kUu5AbLD6GsYxv7a4isXmIX/O0X7WhiARDrwSvjpJYM2j4iovo+kQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIwyehL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIwyehL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D2BC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784738373;
	bh=LibpVhxV6Ai5vNs0wzbIRGLzVV0O/D6x+4GMo5oQkwo=;
	h=To:Subject:From:Date:From;
	b=gIwyehL2yIB1Bm0SbV0UenssYLvGv5GYn5jWPqSvdAItj6BamDaHjX0fT2kR5M5I4
	 KY4O+FLam3wuxaVG9IdNgeuJvp+40DZPqbv94VSkb4tSAa1Eq1XcFzF1OqK+8Pqzi3
	 Ntxj+xQB7kCT/HBnpCUYhHdn6DMgUflJXciLy+di42kqVoJ9kf3fmaQebiVcIo4Cuc
	 47KYj+iRehDaK67iFeHHQhGcNR23ybJBnQRegSdOs6iXn3ssaWIiQBKBsDLOdQ3Nb/
	 ONMDGIzUSIet5tGIf7/MeBJ1SjkO0ia+5OF2NMYr6q+qIcfuhDMCWJ8UQ1ydqu8nB7
	 mKNhtGltBaVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AFAC4453C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473837368.2275.2263572341000612329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc340b129dc70a0db54be239ee0cddc346c72d617605e49c2df26be380fd5380
Date: Wed, 22 Jul 2026 16:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784738373
