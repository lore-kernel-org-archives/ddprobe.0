Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72716848D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF959C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688026388;
	bh=WIODnEcETLDeIaXUftW3h0AdyTX+pAYo7ffyRzcZs/Y=;
	h=To:Subject:From:Date:From;
	b=Dkt+VXdsZGaacB/tAszBgVsk/rqzzmZFPpPmdeYyxxq95fs/ojDhfMu9E9mrBdsPQ
	 wPhzJBHZnS2tsDrYfJ2CRpC+TH6tW8VH4nGJF4S33T8bHNbZjBNcSDXVZVfReW2rtN
	 CkHP5NCFwD3teHmm/rrA6FJYsTZD/Qv8f9p1esBHrGB8K2JwRAgkrucVVNk6KJBLZd
	 4YaPSMRXd2V1mUDxFKmGeNPgmcF8DtZ/lbQXL6PUb3MJnChsQ/JjrTw2TpkaXzS5vR
	 fL6k/eK4pz3tfz63Qp/YsEZldSDvBrEEdXmDakalgLooBjKcsYCPjAUd6J6xO0XZ+2
	 nmSH9joRSA8rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1146EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168802638869.32029.12351161391497439932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67a34bca0bac176169da3bae2c5b13b23eaf37632400b0e897743157400f47b
Date: Thu, 29 Jun 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688026388
