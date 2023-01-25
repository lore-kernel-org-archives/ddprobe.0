Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEB0EC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70FBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674607985;
	bh=pHihJ53cnl+Fv21N80Cy0v6bM0xhbN1sqHn0kLq/Wo0=;
	h=To:Subject:From:Date:From;
	b=QoAl1+RPnsQRUy4r1RW7J+9BHF45tCnnCFfNzkrb//Bl6xF65t+KIEOACuotd8uVp
	 Qv++uhX7wkfR7aYaYPb6HrKlZhhEsysNbFEUm4jB/Bv3gCwdYMmwHx/id2LMUKh6aY
	 Sjb6tQYSfaXi42NeC8dHzRjdoDgNbKNlUnoN9MsGSFHVg8besHp6Xi7iBN+4ZJp+CJ
	 3WU+4DPUqT5aXPJAYQN2GrJTQlO27xAG3e4VWZT3S3m/ErJDB167FSgyrVjxTZqqCd
	 jXSQwBrymLP4PAL4eg/beOy5nfDV1Hxqi9RLL7HXuOT6Rq3jaeLv8Lnuu1Lp7MLRK4
	 Wvr7DTLgJ1qpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10ECC54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460798571.1022.7679982033397926738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009cdfb27e90d28b3b2b28e6202edc01f4368fa3e8926eb62a3005c6566bc85d
Date: Wed, 25 Jan 2023 00:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674607985
