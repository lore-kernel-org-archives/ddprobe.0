Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3CE1A3165
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778328454; cv=none; b=tZ2fM2GdX6N/NfxKPcPJLTQuBcUD+/fPFPv4IMT5qsroTNANhJaptg+ESwknf1peVI5KNmUkbuTYQrUfL0JQEo57t6QyDkWEd7ZRrSVxLn+wmxAbiEbbqQUX9he11F6GwlSFIp3sPFwjwGxTFXCLyOPU4UM9wrkMZCqgAwuZc8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778328454; c=relaxed/simple;
	bh=WBdLjp2I4x9lfwwTng7WBuX9fh6kIuxOlPfeGX0Sf/E=;
	h=To:Subject:From:Message-Id:Date; b=Q418cpr3P2soukWg2sde+N3zNmapOw4d3M6W9CWGhZuUrKB60mPtXt9cVVnRsPOMLBYs31ianoatIh7m8KltFbirAcS8hF3vmeDRqNNN3b74qHzrzEH/ApwWU3Nb6bTHmRd442bzXcnFfjusTXmZo/MC8cF3NA5tw60g0D+jIXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKzf4rKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKzf4rKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3D310C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778328454;
	bh=WBdLjp2I4x9lfwwTng7WBuX9fh6kIuxOlPfeGX0Sf/E=;
	h=To:Subject:From:Date:From;
	b=tKzf4rKXs6Oq7uCBez8ZPdx5alIjrihZjkx9PT6pDreGVb/VHuS+9LO7z7T+wb8wf
	 uUMSCejyfdPPbb/TB9Xdi3gIHjcUDWVfuFZwqjX2IKG/nkbWzOmtkRkO8VRqgdPKXV
	 PV/mlefjE1WNA3z53zZtd8jXlnJ5HaIDSC1b2xHnMosgZUarYpkeCZIOqszcUYmvyN
	 z0vXUuFCruKOEUXGPS6UDiJkg5tDIKGWAkxIjfxUoft5PHjawCLrvGZUExyIoYFLy2
	 LpgI3z9sN8MzORph91hXYtjFAC3bgTFEPX8w76OIOJgd1ck5PVpd1NNuSnsgOrf15i
	 ZHT+EMeAiURvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3858CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832845382.8837.17657072375882662442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894cc61fba334016fb70b5a907f2e49a34448edcf925c07ede56e76a681f5c46
Date: Sat, 09 May 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778328453
