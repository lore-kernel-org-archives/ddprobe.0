Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB08E20F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B7AFC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664866253;
	bh=YBE3wBWYeUkfnbH+exHS9TvXb/ptjRhSWR7qKhAWMTg=;
	h=To:Subject:From:Date:From;
	b=o81kgFgNsX2nNX7WGpljT3iN9msuIzCT1G1YUBBuCeUf359t6E1HQz8ElPXR7L2MX
	 R3zjAV30aISutiCLy4i1PiwbqXxijwa2AEtLby3rwUR18XsWiWCavUsHkgL1UvTO4f
	 E3z1O7iZZqphXb4Nn4h3oavgYDK/vjHSrv8oocaF2JfVelsvr+ep+cGrXfDOKKf4It
	 L65pxdYluo383f9O01iUw2J/5EyzHCSzsHOwFu/X4sj5twHij2Pi7b1RF8HEHrxd8u
	 d73FFA76zhbvoVzjcvT6cKdPGB4DJiaTFcILFn6lZPbdi/VG3QvKHy5ZBmsmhxSyQV
	 HCkYwKVoI7F0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F493C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486625331.7185.1122964884886159689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46281766dd1c1623be64914b206e6ab1dccbde0b8ce56a216abc7902d0d9d15e
Date: Tue, 04 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664866253
