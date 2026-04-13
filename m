Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBCB1D61A3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776052654; cv=none; b=nuYsoplj6py5br246KLE2AyS42Tq+iDhvPvNWR/5t2ltFSJWn3mPaAACpLeUkw1kUn2LtlbaRL0g5Ujrik1zTwt3rd+2m3i2pbeQghtc4Q4lHJqoLkzvQSlbz86D4/sxRCykbvAnbhbkG9DacPPNS6YGzKNTiidFIKWNv0ZGFqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776052654; c=relaxed/simple;
	bh=UkA3h5TUC62AXFIfOGGnU4Iib5IF/+84lUjEC8j1R7s=;
	h=To:Subject:From:Message-Id:Date; b=L8JYp8oXP2YynzPIQ8gHx2ZHZJuSuuQrvH71sBGVYiN3f1XZBkJ2xrpoCs+9ITrm7/5t3DmyhbYbAv/HBNDgVtdlDUDPXCWaMbpXHZqTUjLRNOP0flifRz1rx5iZQCIytbg8/4exFxSZJ/jkNKRpWC0JEKKIY30uzkYYcTO0V2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqajPRtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqajPRtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD64CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776052653;
	bh=UkA3h5TUC62AXFIfOGGnU4Iib5IF/+84lUjEC8j1R7s=;
	h=To:Subject:From:Date:From;
	b=IqajPRtDbTp3K3c/9/wcEVenDCN3yoL3wxsffLK0pwwkZaloGz5QHu5UPGfm++Egv
	 +rhFOEfW4gWohAWDDddvHKK2T2Bkbj2sUd07PsGdGqpJ8oi1HKCBThwtNPXdVNkvcW
	 FOve9QqXW15+3oO8gdiR0hjzv6u1RxzT8FuykSH+4I2qCK94dGEWJAPNDNUdLCtaCZ
	 2xYGtMETn86cpVdQJ6I1w+VuiE4ewf2bj/Z0s27nxvdjK074hJlbTyJ5/85fJSPl1Y
	 AoDazIhyNsn84cODJYqqJ7rqXAVaHZqOkDk7eAuWPLsEpppYJRTTm8UaG09nrDGqSl
	 oR9cgKGBf6UJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACECDE9380E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605265368.8875.16560749769704858349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ade4bcab41ce0aad232ab8b848d7afc2b865547962c5dee5c94e8ca191e200
Date: Mon, 13 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776052653
