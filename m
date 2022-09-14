Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE11817DB
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A655C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663132253;
	bh=0yJYAagVg2ImLfUtlpWN2qhoSTL5sjCyQxSKpaZKwMw=;
	h=To:Subject:From:Date:From;
	b=IVCK6S3SjHTUXXEidd/QWfPasRTEM9/AKZVO+XGMB+CxsSRnBRnQbniKjxB0hchfw
	 9uGEe98ouZdIF87gVNu9E3+dAcyPMx+dGzfbOgG/m2oaK8ken62FcqfH0rVZb3vDNl
	 7TO2MH4t5tM8BTW4rdRNXXTlRzFafFYzOrpoHocEOdNNHAzr47rlznMHrB+2zRyn25
	 S+c8MMKg57ZpV92xOcOVuz9ViJZzWRVc5AYVi2o/am3T2E/++jqns8tsjjLqxAbNgy
	 tKWn/RAYcSqzkI4qyR2IRDuZvBvylxYCQQ+d9V8SuglZlAAsRmSa9daIpiwJkyEk5J
	 SaPrF/5IzEO9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DAAECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166313225332.32155.1573153902018603376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3f77fda72a35c6981395b8fb65dfd453e140eb119ae04cfac5d8ab39eb0534
Date: Wed, 14 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663132253
