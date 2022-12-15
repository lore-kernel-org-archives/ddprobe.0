Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D687A2CA2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81076C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671099087;
	bh=mLU4p/0tzBppy+Isu61QsZ6a/WPohTUQXIoQwJifbJs=;
	h=To:Subject:From:Date:From;
	b=BV9XlVKkerZHRUa59UhHxhoW4cYmdcYey6pw2tfbFlZEy1tU/zx0CzG+9M+TMYtvz
	 0n9stEPAmozj2maNeXyP/O/fYZbbNm3W2iRcetuSJLcpFmH6kZuvVurs0RFpmTHBcO
	 MWgaSkJIVG7DMNDhmIh2DFTAGPBGiYZgMAAAz5fohwtJz6eKGjea33Bbl36BOzQuLo
	 7+0Op8ezYqhlN6WNAvmLa+byqmhf1Fj8yBpztAwL6eh0Q1b+VYSyfxmEhqUBc6X24o
	 6J6N6hizW0dCwnIDhJwcFtjuf6GQ6oPoT6A30IJ9qxO7nNtTGixDzUb9ZLDLLQVGP5
	 msX5EYCcROwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6438FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109908740.28727.12634327796569288889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512d981781283ea81a8010d9033736bf40f53f2fa60ed1d4f118bd97287c5826
Date: Thu, 15 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671099087
