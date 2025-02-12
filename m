Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A48F2CCA5
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739369815; cv=none; b=DlHMiMt5nTJdwUoleT9Ob0FAJddQUVs1+hAuB5yONNlzskp1QmdcfC5jgwftpSB+p37bmWs9wLYUPFfUmG2Y57pJP3GOx7RFJXKN4cCkhRoXZGRoxi1cB13QoMWKq0mlAV8CNQf4M9WDjcBkYMe9w3IP+z5isPXEtuMBzP77c8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739369815; c=relaxed/simple;
	bh=HbfbihvP2dDvP+O/V6Y9sQcShylNtnokODJvJCm2g78=;
	h=To:Subject:From:Message-Id:Date; b=m6TzuIBs3AdMvLH1ncadXqNJ8gzwLiILiqd075tE5lfZBIMSzHOSH49jgLK29OkzotMsBVfabh3JNubsxMkiZQYUCbYDTveLEJJRFu9Wwlk4M/m9nwX7ApkxIc5VcVuIxx6FHresGeeWPxSlAIM/vnamozaXG7m3PKRXsWc67ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkF1edRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkF1edRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F4DC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739369814;
	bh=HbfbihvP2dDvP+O/V6Y9sQcShylNtnokODJvJCm2g78=;
	h=To:Subject:From:Date:From;
	b=rkF1edRiLY4jZjChJuueYh7hAYCL8qoLUitJ+89izlIsckrY3gmcs02JMBPxzbaf7
	 sOAaEp6N8OfyazG2dcJFTNqAz2F+ophRlWNy2tFOJ+QSGI22NmfbGODIrDlw39AG3i
	 kV/MaZ0mHn0WZF0rmfq+EOzxbJ2whzKwtJwFfMUHhVVBsew+V/9NhRGakaEWtU8Tce
	 Ah+sVVcEbO5o+x8Db+3fQeYzrMaMLCoF/aG679Fzh9ETFTGNEvc7AM4DbdcF6ht3yO
	 bQJ0k4FqNVG6CJVPCSd6EHbsXlMme2h897WPd51JeILZMAcIqbspwpkfvog1BxaFcN
	 Uhprj8naRtPnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21BECC021A4
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:16:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173936981407.9164.14161395892989396510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93025e75236f7afcac54be4f8cb1d36338ac55ee2bb6f3035d011fd92b3d2018
Date: Wed, 12 Feb 2025 14:16:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739369814
