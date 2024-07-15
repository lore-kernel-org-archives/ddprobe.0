Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494974C79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721009543; cv=none; b=jJnaBra4Ib9HI3yl46/5P3KDuq/mGwmsMZghhDeIei9as1k9admNwrCxw9Hw7dPx6FTpgHgRQpW26e1FKJE2ilrw6U3AHLfDqxL4PexRUacevdG1MR88Po5YySYQlx7jIqmdHupDH+a5GEzWPXvO2GbkdIuMWVwbBqfihNJQvvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721009543; c=relaxed/simple;
	bh=3kZiZasM8Y78+58Yj/J9kQj+tgiSh8nGScu4FiHYYr8=;
	h=To:Subject:From:Message-Id:Date; b=ud4Wtkvksae0ped5hpHytvNO9YVibvMPXzJ0vH5hZCq1n8Fr4YouM8QER8Pyd9+jGHKDOiGjjdwgXN3e0gIUm7dm3K2nDiFYtDPuDeKgQx7zmKHCOxE5RgyCfk56tlBpb/Z8SllzYZWfMSbYSfhmrKeuibbcG+IFvpwS1rdz+X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU7IKvRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU7IKvRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80C4C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721009542;
	bh=3kZiZasM8Y78+58Yj/J9kQj+tgiSh8nGScu4FiHYYr8=;
	h=To:Subject:From:Date:From;
	b=YU7IKvRifJAMXWOtghIuXVPSnCzVWDdcnZKsCPwmgmGPMEZiMF2bewZhR9xOTIWe5
	 xttZfm79SEVdnPVT5YbTkyUAdTOGT5GYBH2K36Ipvrsx+NKfiKaiKpnkIp/zgzrdVt
	 D+hn6BXLOsO6hHaX9a1ns2Vwz+0MKzHPDVfh3tCBMNJjyW7MJUKGd8VxSXQOfILgsF
	 paNNUzEfBWShpjs5BjhdN3+dkrG/aLmpBuZs97ukxdTY0sJL74kjlfVCpHU5HqZ/Lm
	 WQxn4eFrK5di01VAaDv5bM73Ig9tDKIp2ydXreIOQDLXj/ePRZH0XmTEhxTI1PKL/b
	 etLpdJ2qQ2p+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBA2C3DA49
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100954277.3279.15912822721265802451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff6debd551913d72dba5f9383ed1af0abcbc07047f3c8c1e41f05c87b819286
Date: Mon, 15 Jul 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721009542
