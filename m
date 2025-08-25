Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DD926C3BF
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756114794; cv=none; b=Aqycf28ahdYdDRuF42emEg5jaT/IlItt7qmE8DtO/QxaUoU2Liro7Y8dU6NPvFeS/NE838GhjLuERuoNVJVJ0kj4gDr7DHNlmNjtYfQVvVo1CVK+FWGf95BW5TcEJkez4tjcmgaH5pKaCN2YY/BOKk0R+ACckxOSPs1GI8X/8HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756114794; c=relaxed/simple;
	bh=FdqNG9Ss7euaxBvKsYIt8AmdhVknyhN1Yr2KX7WMSug=;
	h=To:Subject:From:Message-Id:Date; b=WGs9n4um8xK+EQzeniJrUMCdLSDIgMHGcax2W/KXgp/MD0U7B/W/P0oR2bcw3McXyZhJs9qPA7YwH4CA/g36QCBj4lqe92gZ91NqoXY70NZec5zs1vPHL3ICPEgTYOlZBrJvr4WGaFkK7UqEXLvL4inpTG5WhPh3AjOp3FqyPiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yc8xbXVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yc8xbXVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D44DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756114793;
	bh=FdqNG9Ss7euaxBvKsYIt8AmdhVknyhN1Yr2KX7WMSug=;
	h=To:Subject:From:Date:From;
	b=Yc8xbXVLM9pTqpeBKva0WYQe4vYxFLutTqpYQ3I489F8YbahPwUh5lajOg1J0O+0M
	 RvE4M34aXlDJrvHnkdHCDOlxTgB5ib6KMKuOit+kLORHH6EQnn/ZHZHhL8kZRNCxru
	 EdHoj2/S8la8eCeqRjfogiBXcPAH2E+34IWph6eKUpbCRT1gFfA03OlQv5k1it1dJD
	 jsPM+E0Rs015QtHB43t7Pou5LImvN0qUWwg62KXu5Zj1wg7TGEYuVsXWIwZjRGzMkb
	 iyqko7BccUZH0v0/edb3gjUoq3fT4G9OOYWUTswfwOOkFQyfwKM+9Bb9G1yFYkUqRp
	 dGJoJ8YztuYhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F442CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611479357.15539.6551906870822523085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd99107f7fc0b5be10cc3261fe031db846c06334b33aeb64aee2f297bbed4a56
Date: Mon, 25 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756114793
