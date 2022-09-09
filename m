Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1064C62
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F5E8C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662742853;
	bh=W8GhCO9BMUPKUET3a5ZuZ7pNnG3+yGxWEgRlxHJjibU=;
	h=To:Subject:From:Date:From;
	b=KQbNBjrAEq3CA+Id9ZqwfXIfKkmdRtnDJq7DkjXftV0JM/BPMso8Rcz84Oo0t2jz5
	 ndUiSCbXtIu7ZpIBj60JAREJJ7d+vFA/A0dFM+fi7p37upHxDD5TkaI6UBTsG28jfW
	 WPNqBU5Jz3DxM7cRZvcSAiuSwjlOfZHzXw55583Q9WFaK6CVAe8DuJ5bC1aSifmNyf
	 glgOnCTQT+Zar5fyoP9DQ8ldUljJBPdMz0PsGjp5MzETcHBI24fabeXQ7mj09tXM/z
	 He5j9JNhvEtZ8dlq2stNO8twJwk1HXYi4cPkbt6a1wcA/hseOiwTiYqZV5azzRmF4Q
	 muWz70YFRKPfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548DDECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274285333.19942.5457753190832899243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91438e98993c1a3dc192b98140ff83a96fa7d677118e99e91208eec339cc97c
Date: Fri, 09 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662742853
