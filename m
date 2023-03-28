Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E2D33D9
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 12:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B0FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680007385;
	bh=5oBWdyqHXq9e+LHLxtp+E2rWRgsz5oLSwnqHKolNhtw=;
	h=To:Subject:From:Date:From;
	b=rWtHfL7xx1t5q7FfjmkgBXkU9Cu17jUCyfEW0JOVDyAoyjurXRoIkUV+9VM5JiB9x
	 2oSOicA/hWCyc6+M09dNc8zorHaNWTLfB9ffw4s9u1SDFtzKnMd6qXJC3K7JXPQzrJ
	 FapjEtGpCBSt3NmeAJqPTiYfycIeCizOzcnkx4AsR+uRwjAG4TxppHvmQ0Dcc/GYlZ
	 JdtHu+omK0Eb/GfO1w8d/Ac5TIysYiYh2hZ/AW+ZHskqrogHRAufZn2oQ944z4FRBN
	 AQsvq63Ht4q19SfWTKKvZTcCIg1ToBkf+uIoSCALWeghLfr3TvFuCiq/i/IdoheOkg
	 W4fD65yT5kM5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A17C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 12:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168000738579.19398.13256236661198347919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beea273de54ddf218bbee1325a02bd0ca18e4674200feff78f27b517fd983719
Date: Tue, 28 Mar 2023 12:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680007385
