Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18E4377
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89C9DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671154287;
	bh=Y3JDo7e0ZGycCEf3aGQ1UKDcSwfErZT9hGrhXWIKHgo=;
	h=To:Subject:From:Date:From;
	b=ti/ZGAA4tD4R/n6WjveM2ngooNxEcg0FUE2b9xDcAomCRZCfD+sVSJHjvMnvVrxgo
	 Lm79hi3jhdfLnT0QIrSEXnseUQib5QQjYaf80LdDxWmHWvBURoO5XowhusrSwMNhd8
	 hvDteTPMnGM+CZjEE41mAqrGh6VV0FThKFQXbzZITolBA/Cl3hZ539xvMSLBWvbhv7
	 7yzRQ6qxviEvqYKF16D3okJOy03KpcPU0U7Ggz5jx0mqnUW5RnvcQ5GVwX4JDcvsAH
	 JTdXq+71xqttRpDn3XEiKqm2T9x9SxcCt7/v0Pki/B80xpkHHRjnaXJD86mF4lQJDO
	 o3E7S4ZCX0Z6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69477C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115428741.11524.1624421432429412564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32fefe04b29fb0d7d5c9450c035e7873639163f1b0e82be234450e05cf7ad2f
Date: Fri, 16 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671154287
