Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B795478E3E
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789216834; cv=none; b=FhxqpL4CFVm7Qz5Q4QKzm/lB2aLZVeF9NN5WLVvkbM8ZgrdTR77K/TJjYhqujWPBW4DKP1Xtbb0Fj4yt2lV3lsou+DQ+SATjp4pMU2jqtjl152y7dauC7+3VK8SwxL7p+ke9iqkGAfBmHAimLxRbFDzyRateIBgJZbJN1MrP+G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789216834; c=relaxed/simple;
	bh=jRIuii38YuQxJ0zz5pdiJkyKirTwXmH1pwGHVpsrlV0=;
	h=To:Subject:From:Message-Id:Date; b=H0gJbm7EDlHyfYRR9QcLZ9DzFWY6u7iAUXJF2HAAlM61s4vfXDzqwh3lf2tpjS3SegffJH3t20w5kHUO/GKaZbv4E80Dy27nQOrEE3+9JoZ83oPZvM1XhuBVgA0216zKFYCzVqJxJN1HytguLOcgwFd4KKRSpMCm/W9pyqxDrAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vG/cVe7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vG/cVe7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB76DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789216833;
	bh=jRIuii38YuQxJ0zz5pdiJkyKirTwXmH1pwGHVpsrlV0=;
	h=To:Subject:From:Date:From;
	b=vG/cVe7qapytOF9zo5fHuys2c2scziO2lnvyZ2H13/sC6/1Z/Rpi0cRB0aVXgbYd+
	 VjiFbx7/6S23cN19BE4BCrYEBrFO4t0Wmh5Z8FAKNAecWhNPkpaPZ+9N0FZDQB3OBw
	 oHWwMT+teOUEdaUvXkBC+rxekNchaomaWTM6ZHUc5QaN48x4G1tp3/4LrvN1VRm6hK
	 65UnO6aLeram8GnCMEQnsQ4wqkUgkIR7oMSFi/bcimKxsusadxzTIQ8SZ1cdFkcmCZ
	 JhKWruB9UiijNEwn93fW3K5yLv/BnOXnPrkG+iKF2Sr+t8SmJvMu/q2zQso6OpvHm6
	 OGtG2WwBRDv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93FDC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921683368.28677.1566415359406183677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebb583f673605b3202b7d637e239b7705ddbe72f3606daa601b439271769051
Date: Sat, 12 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789216833
