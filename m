Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6B7C8C4
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 21:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91BBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 21:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695505508;
	bh=u6f8lCcIpVelwMgUipI9uTzcgGMUIzClKDUNpNuLfR0=;
	h=To:Subject:From:Date:From;
	b=Kk9Al5dN4/ctyzh64dw9GT/1iRLJbCGEguhQdoqxkC32ka2A5993hsoecAiBcDChr
	 wrZAEY0Y7dTIjm28hiC4METwBd6DlTVxukXikvFJRk98FHdvtZZ3meK+OaSbarAGqB
	 Idipz5nOeUlZUjZFhS290D/yU3XRcq+Itm34EF23v5kk7FJTXEEY2gEwfO3sezHBLw
	 HRyrVW27pSzkmkioCG1h67ZbhhPO/Idkf/1QX1n5htsXvRSc7rZ602eLlG60rcNX/T
	 6VoET2ZArrkeiHSEs23p2XNQydWNMIBpvYD8RpmMM3YFkC5erFbjbzk3WHPBIJmgVt
	 AKJr/pVSpdpRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E75CE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 21:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169550550872.22407.15583651012819392126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb04525a5551732cd43ca3efd1bcdac28d911797434070d6a345e07e8fd55afc
Date: Sat, 23 Sep 2023 21:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695505508
