Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470611F95C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 18:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2170C4339B
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 18:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685037905;
	bh=3kHLWvbFqGFDxFbxKf3J2TJfIoTLEpokIm41Eqc1ugU=;
	h=To:Subject:From:Date:From;
	b=gf1mwlJhcoCwPmiuE9MUyCwl+Jwk3O3G2kVq6msDG59wbptK3BXLYmRjxNNWSgqCp
	 vtnN7jECyaUflpyZ19RDZwJ3JF0jUixYosEF4izx3aDl9avc1K7GbskfnAgu39E4Ug
	 laUCfsgQ8LbQFKsZrPfLNnLKYX1L8vRKKjk+RR4YgwM77Ky1/EXsRW/EmZ61NCBW5+
	 FrAN2ys9FBhfhuZWxPt0pACUs4OykCwAu5MnD/NuyXlYcNbwHTE4yTYjJAhpa6RcYC
	 FeZsHwa34dJjI9l0MMkQrclFVX+7K2ic499BxLsyxOYV0MrnSozYMdX2OclfU7R+kh
	 yrH/Um/iFG1zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AA3C77B7E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 18:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168503790581.10204.13441814823660235322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef54fc2c0707612f1e916a3df79ada918057618fa951bf6f6bb0fed152a01a7d
Date: Thu, 25 May 2023 18:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685037905
