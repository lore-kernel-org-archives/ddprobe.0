Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A928F6D
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 13:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4FBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 13:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679577545;
	bh=wxlbbjbqgvqjOdW0rwmGjFIvq6LE1OY/hJ3PC1rLVXc=;
	h=To:Subject:From:Date:From;
	b=Mce/F74Nt0GUhsucFy3ZcTWZk5Fvc7FcimUcfUgVws+Wwi+2cp42VyvRSRWcD9VY5
	 uJVF+w1Od6DE4VStvuquxdrxpUSGveEZRu5hRwHDDVLmCrGWJtT7THUw5yp49EPfNs
	 5MpnkJTgTcFkcLaBPJhZFIxKTiDCfYNagdoAWiSQ1FhGEC8bLcqar8C9Z1TOS5Mrc7
	 y/T/HI7dGPKQi4gBmcvkBIpPE8pIPFRxihKEyL5Df8kKBBxtBwtCrvYU0WhZd8gVw6
	 ReHuY7v6jqLHr/DXlbNwpCOUFSj7C8tbS9tMGpvBn42hxCJYmyxgndqx5/yktX0Rb+
	 c0H5zqr+vqRbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3FBC6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 13:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167957754577.2413.15210257488658013941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8414ebeae736a65066579286a639efd6e3dab955b8cff82d2713007796be5500
Date: Thu, 23 Mar 2023 13:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679577545
