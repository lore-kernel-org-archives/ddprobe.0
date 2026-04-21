Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BB433F8BC
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776801454; cv=none; b=jJxkPuRrAcc+gWnb/om71qojN+PX4mYWNjQwYqjs57SCPBcoV7QvRrdNmP1QjFoIqT3DsGpS2IJBWOsRWnZ8lTMhYshRZx4t2uYoKfJhNx4RIt3fgWgu+OHbLVNZf5VBvDBRXjapAffUXiEiAohQoGrIP+hzJOyvnUbKxD0Zct8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776801454; c=relaxed/simple;
	bh=4UjEeDEy/8q6OVB9fo027Tuc7VBblZ0G70tdzahYQZY=;
	h=To:Subject:From:Message-Id:Date; b=l8bgzaFx12EgojJJ2pPSJgzJgQNmekct+Y3M4Uh/pCFf305RMwcvmzs/Hg8xMiUFooaOrmMRpLuB09nmsxeg9mOWFR2n7x9AAbqpr/YzHb9NHB+7hR4bhNbpD0Wqx8SB2d71XKGPob5wcyhxLPMyHrK2RpUnphf/bBz84v0hB10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjO8os2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjO8os2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1F5C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776801453;
	bh=4UjEeDEy/8q6OVB9fo027Tuc7VBblZ0G70tdzahYQZY=;
	h=To:Subject:From:Date:From;
	b=qjO8os2jBs5fsV0ApfoZNQMrprtuN/scEn676e50tNixgJb4SRdN1RNBpx4lDfyeN
	 VNf1ylN8QStKe3MvDJ4BgF2PsYQGrJy2RDElUSSoOo4aHkAZQUTd9jPckMGxriIiNB
	 YR2YM0hnTjJb99kbFm/scfwVTIxw9GSYINwkyfJX3SHE1dUmW/lHmYia9RGJENq0dF
	 TwKSmy/GY+xm0wPuR0RBZvjzliDZeIb0HlvqeqjceOkvmAVEfOanRefV5ggFCjeiTA
	 WpM04XA2w5A55QgucqT6AQwbXkoZhpfGW9zMiKv9GIVXtRGH8RadksfA6ovRiE41s3
	 nHEVULOvkvtNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC603F94CA9
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680145368.25451.15830850404425613382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85989aa217c5f8c68a91269152aef0241558fef829e18c43575a426d25168dc
Date: Tue, 21 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776801453
