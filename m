Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3690D8F60
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZUIU2/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDE8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697791096;
	bh=RE0ZXx9n+wLPyjHPcVCn2IelWGLogPSmrd//WgMb0pE=;
	h=To:Subject:From:Date:From;
	b=pZUIU2/C6/3Zr/wcT39btG91yajQjf8wbF81CeGuv+L6KSFpDOQRw3zCtX/TZCwjK
	 M/Mg2SyzP6zkijhU7y8Ls0aTyI+JVVmtCsrrCzRucOeQbLMs1fsVJD/w53/GrO5uv0
	 BQ1eAKZUB78Gv7Ll4MwAFeRQyKrNR/sPFBb1ZNmjGvOk7S7V8Zrt6ePiCZoc1D0L8c
	 6rl04r5eBFXziM4cOMRyGv8YHpQbd3ONzVbP1N9R+dnKMisVrq+KQeq4ydMQ+B9D1t
	 UbON3lUvGK6sU2HA4nf6ZksT4Bxuhi2Zga5/ZEY9xG/9KN6E9680ykZUulywCPW2CC
	 YPyzBmErBt5+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B940CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169779109649.3939.15176188657978164689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ef0897d8ffe02ba61fabd8656aeddba765c278e72bc413e882aa5537ac0cb0
Date: Fri, 20 Oct 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697791096
