Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3186B7E9
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 01:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50F3C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 01:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676858285;
	bh=QczvVAoHNj8FCx4xx/0vi63U9quZgG3SDjPgxFCKXwE=;
	h=To:Subject:From:Date:From;
	b=MJupef+Lmo9DaV9VNd5Bpq7/5Pi48TxfRsp3/1IMNWEhQEVi5Wbzl6veFbYTgZ6MV
	 pLbgHhc/wsddf9Ya6luGBloeG6fYCEvwhTJ965lAp90jt0CpReBFOArh0NkJ7FBv1z
	 rN5msya0pyB7wnyItJ6+timvGNGWeShgSFw6KvhQonnjSfLk0HnAfLrd6BybxTCgqX
	 Wd/FSANZm/vvjobH4UeiqakA+u61YWLVyUAgO4wLfvImOP1xd9WKgClbrN0JmuNiii
	 vxpdEVD8pP8W7B5KQfkhjexOK5+D1GODyHQPwUdOxeI4P1+3lEr1zNIxsD2NmvlzuE
	 xgLmD603WpoXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73F6C6379F
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 01:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167685828574.31257.3671472986191714041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55a7cf136d9dc770b75aa3085d3cd04feb30828d315b09a1916838b301496e6
Date: Mon, 20 Feb 2023 01:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676858285
