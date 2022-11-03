Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C862F6FD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE6AC433D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667482854;
	bh=L9tEEC8whn71uP8cwZ7IStzHZv+YflmrRe6wYxyTqdM=;
	h=To:Subject:From:Date:From;
	b=KD2p3PiUqJ+Ls8vCdCOLqKze+296hl5txV6ovEB4iG4JqH8p3VGP8/i/3ZgE8WM+T
	 yA/Gkot0pfV26tTr64AvGctLsps+1h4W4YWFFTsHcAtHvOwwHvUr//3RsdCJpyRa4E
	 b2TwM5Yaj/WGOhwil9+J93IMxPovptqmH2ztTDF2SCiJ7JqaWhS4sLY5wVhISyPfzz
	 NmnPil9XcY6p4il5dt0Q0yLMa4Puqhkz6wZ5+5Qkz7uwbO5xMBi5bjbaH8ZniZEwD2
	 g7FCBcx69C5QPFaJu032sBNau5xj66Ra2BVWBClZfH+fVREGkQdfInokyPPcM+iAC5
	 fmT7cx0BRo0Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6258EC433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166748285439.23557.327003756794913306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae620888c037ef2328df6f12b131a59f768deacaab82c9fe1d0e4ddf56f1ecee
Date: Thu, 03 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667482854
