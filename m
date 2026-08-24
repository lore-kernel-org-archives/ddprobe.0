Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636CE2571A0
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787548234; cv=none; b=ltVcaOHg3H40XK2KnL19RxWDZnj+dw0RocVur90Fxj4P7RWMLcbubkGtnK+NSrWYDd9GjJaOS+2Nzges0X2BgEwYfKXw+N9IzRpUBBCoCPaB0WjOy2gzA28U5y1lGzEJ+xLJ1hqMx69TYcgtJ/2t7Dm3JUojfw7DP1qlH3YfNWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787548234; c=relaxed/simple;
	bh=0bCU0KbNglFHIkk9XJTFmll4RhIBEKLW+sA/ZroCKoY=;
	h=To:Subject:From:Message-Id:Date; b=VicHLmHYQ9K12tGXKRBrHDtRB3oS3HQa6ZJd9AWMlj+0d5i7NFlakFpHfgybgadsU2Q8ewpNcxfvgg9wCAu7sXGJ9eIMCmLvgtU/JwctSvm6feNRSCYIATyONTqGckB43uJAw8brH5I6A6Z1hd002sc/XqbXS8DhOJ2XzlRq5lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsFvGLM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsFvGLM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EEDC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787548233;
	bh=0bCU0KbNglFHIkk9XJTFmll4RhIBEKLW+sA/ZroCKoY=;
	h=To:Subject:From:Date:From;
	b=nsFvGLM6Q4ZOSuFv62IwOk+4G7Vx9aj2P6UG7P61hQnA0fiM0tfSyImGmIXllV7Ru
	 bFT5OwajGal8LY/sYsSGpxAJmuPD3sIrko1BnJ7bP/Fxq8n65c0rdBAh7WU5BHBhz7
	 pycuHQosnWtgKO3/WZyvY1Uhpja9KMGu6uLoYYYrejPDSDn4R7NZcuHzcFwhpjjQeK
	 v9gzeGgr0yzzVVwt39W79YNMyPyxKrxo1hio4rsBvBXgAV1x5MW+1Gkwdz2fMvVLih
	 f4iggue4NxppX/uXoxkNdlZGXGg3IG9jRl/hrFuaMoI3u9k4l0bfM+XmnjIYWUGdDX
	 s2RagO9C6dMVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7ECC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754823368.5179.11128962233702143537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93601b1712468faf647541e445783639cf2b00762ae0a4856df7d19d06ffdb0f
Date: Mon, 24 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787548233
