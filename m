Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FE31A5BAE
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786887634; cv=none; b=V97WWil9aL+e2ZRh1IZhv09133Y88WIf+CiM4yqjqKKGEjALEU0Ax0IgFbTxsY/XamPkdTjjeca8j4Phv9F45sAiLLrM607ib3iaH6szYRnB48JxrXaS59+4lJ0ybBcBG2x5A6D1epwJBJ3xnjOq+nYD+/hwdTYdXe/AWup2VGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786887634; c=relaxed/simple;
	bh=iXVuvBTlEhaV4LosDFRIx3uCl0iXrASDF5NDehiCnt4=;
	h=To:Subject:From:Message-Id:Date; b=PVp2rSnB0mw9bB8T0h+7jzgJG9vN9iBME/6yWI4tfHuOULaMUg6c+og3djdxjEEbJnZsuvMsOk/iWiPe1sFCV9W9I8CW2Gqy0UiCeW720Xqhqh37i/5hcR6fmdVce1LBLdKEy7A2gtJGbHMu7VxxDmtuKTUyoO2My5QPSbC1tz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2qM9TDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2qM9TDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0B7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786887633;
	bh=iXVuvBTlEhaV4LosDFRIx3uCl0iXrASDF5NDehiCnt4=;
	h=To:Subject:From:Date:From;
	b=k2qM9TDJFUn67VVKPGuIg7hItRukDVzOo7WiaM+MsRaBgTJ7pnvDgl0ZGZNxl9D/8
	 YVNFDjEZb3I8MUh4Kwq5hrqyBmvFCAwKWRX2Db1A7pmpnxw7fcRrStsh3dth1mmHof
	 EMGREluwV/o3hxIYo0Fg5lA9YgA4rKRf2Ay56H0Tj5/IHUKjl+50OPeKG1UeBFVTdR
	 Dp2iNUirbATFizYbNBNrX8R99XBpcrgBnipl6a6C8YvyqrdRfWBsYPRO0bZsptFzvw
	 MxuvD3BBRCDgWIkNvypKKknIjrN6bIRY26pXUOczXmUYjiK3oZYoeBBHGDuaCoe+/J
	 NBQAM2Ocx3/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E69C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688763368.14225.14802183433851133300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d23ae45d6dcebb081c65307d62ab939f486530caf438430bea6aa509d57a86
Date: Sun, 16 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786887633
