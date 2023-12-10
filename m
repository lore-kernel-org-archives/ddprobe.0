Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029CD18AF7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WchWxG64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 799FBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702239496;
	bh=lyhf+Oz1JiL4DTIeCNdI5AytkmW+5tlY3olmbVtnEMU=;
	h=To:Subject:From:Date:From;
	b=WchWxG643g/hzDstIRB0HnWRO+AF1I32Ne1BqUY0GucnQdP/hfpuauaWO2QNk8qVL
	 aFpxASONAbQ53lEk4ZnIuYXM+ovyHGzZySvkjxKNLQ0xiiCZPARad5IsASc+FJTv9m
	 tQRebtHjMVAGygkZR44aNHED2oWBiOB1WDmEwURRRD2Z4i6IwIwhraoi/kY2RHvkeQ
	 kIvFpVtqfFgF5MrzsbFJ3BeisIpo2e8sn/PN50HfvE+hLVTS46GiIbSitxY2BK+0Bm
	 MOEDHvjV3L2Mkh5TWGAZcE0Cg+pksjUfEKznoWPNGxoNM3wOfPvYgIvAkLtF36BHqe
	 4w8Y5kchTly7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614B5C4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170223949637.4072.16881145507814426713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b99527faff0e72fbd49b51853ab19ba0e68873dbf4f16af12036ccb33b992fa
Date: Sun, 10 Dec 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702239496
