Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3E236DA14
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772471694; cv=none; b=VpkW2J04V5fz13a8m/TzQiL4MmCYQ2qhZoil/AnlvjmOHsDqujvuy6dj7gWPrn2uuWk+67vypyxyx2otx7D2CYUYnh42ZDZLn/MFptgM9sh5nn+vwEp2JlbYfFHqPC8ZFLq+01TU0pxTG38EtTA4CF+Ao6d6k0PYajr6IGjS7I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772471694; c=relaxed/simple;
	bh=FgA9mDOxXdqGh8MeynsMFxZWrvLrw/SUZ07wDj7bxgA=;
	h=To:Subject:From:Message-Id:Date; b=NQBmKxE5Y/tgyLezlnTSFXzIVwdSJ1t8fBQnABpXYYqA1KKFoz2OMIY1aRI5p6hSNCDuQbzGtgff4UWaAHf19tVude3/f0wk6w9fn6sWxea+A2e8YKWAI7bVLrBeiBmGkswp3d/WoyqMWh+IKkRJ9AX8944CGE16ra0QGH7qh6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Grt0y5dR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Grt0y5dR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFC6C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772471693;
	bh=FgA9mDOxXdqGh8MeynsMFxZWrvLrw/SUZ07wDj7bxgA=;
	h=To:Subject:From:Date:From;
	b=Grt0y5dRlT3tT+DTY8WWNEwbtyKqr/eofmDDGkTeYm7f0gyADVunSIcnSfBoi1X5/
	 2fPU2mJN4Kxkwxk7SwgRKEcRzTj/tKGrhqNgmGCfA3EE2C/h9B1zlSC+jHAkPSVw2W
	 ICmuzu36S/nev9j6pAt51QFwxcPDYM5MDHjVoki/Jrc+2MVmFWWdU93Z7m1E1YXXjZ
	 U+hILThIgUHb6Oft4tl1AZsKg6OvS8vjRVgazgTNktMViZlspFfu7ZScmETIs8G9WB
	 caqvfOaU+KfRyp2s+lTyw0y4KdBySMqJ2psOjS4LPTEocazuYA06nYTvZLse4w1/RF
	 8eUKUIrqpQEbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC5EB3622
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247169359.9645.489646490939576579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2037877ec5bcd44ee3c266e3ec28755cec602ee4431b526da239f9a1fca77514
Date: Mon, 02 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772471693
