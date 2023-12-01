Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB1D163
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRSCQHHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81CB3C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701389296;
	bh=ie681JhD4dvmAC8BosCJ5eZu6PyOYeC/vYzfi6oY0w0=;
	h=To:Subject:From:Date:From;
	b=JRSCQHHwf0CNx+pRbfq7o+/GrUGvuuq9V0+yhEA2QhXiebkPcM1YYXBbKNb/knQDA
	 oiEIObGMG2NauAVNzIU0CGu2jgW6u5KJolvG8hX0dZyc2bXPSNADh0sn/bAbrsZPrr
	 0z14OfdzVFo1j247vVirMiSWM6LwKdHFJctJwVCmTZFMhNb67fruyJV+Bp0KjHOSPW
	 cXD+W9VG8xiRw4ET5VE+/Pv5VrqBwhg2mtIW8abSZ8MqlAgfui5iPKRzwssW1nnOwO
	 hFR5sG3/3A+YGQdUBzcy4e0ExwaHSAmA+KibhC9NGidP50ftl1FSjIqCP2dnJmwle7
	 w36HswLqEcynA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6797DC4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170138929639.17793.8606741655644814934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fc6ad164417c638c7db87f6c38a00728ea8a91f5894b9d3515965484db4267
Date: Fri, 01 Dec 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701389296
