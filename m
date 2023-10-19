Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8030317C2
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 05:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ3h+1Z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07ABEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 05:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697693293;
	bh=aALSj6L479ZhunGYPuBFdPS2XareMMkiOa3sr5oeafA=;
	h=To:Subject:From:Date:From;
	b=tZ3h+1Z5uQeDLe8nhs2vAYGltG0vOGCfIalvogTtCvA08ulcGd3x05BUhmrS9gxPu
	 RCU0zwHzRIowrYIVFlP98SxZ6tcnaYkHd8jHIqMpm5+thrtDV+rdhdoygM24ytxRRq
	 g7gqXnftVCFD++NadYJuUtpMdDs2JSb1fR62vavOkClkJq+tcikTIuqq1cKmtkNZ71
	 6EX70QG9velV/u3m3VxkxpyBNKjnp7HlQNVRV58dBeGHOk9+eMDrAFWbxuX91GPIrc
	 dC+8RSOgwg+n4EdRZqt5MM8fAFAavyDxmkG1u0dJ0y23m7sfD7JwGFZWS4iO0xVO4q
	 /Dp2rIS+UVIrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D40EFCDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 05:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169769329285.15559.2894188811848536622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5cf35e12f7b756538bb2962fca234496685080fca14bc5876afa872f8185133
Date: Thu, 19 Oct 2023 05:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697693292
