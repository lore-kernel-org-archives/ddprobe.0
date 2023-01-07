Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71B895DA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 984F0C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673079687;
	bh=oPd0y8XSYGLrTVOwyXd43W+EzZ65hn6zZlYxXPtsjhk=;
	h=To:Subject:From:Date:From;
	b=PN0qi1h7ZBysCMpmxFCqiyTs103Fp8SXj+vKYctH8pST+eP4GB5iChMHISYSJ+qJr
	 Lni0j1px3me2DnmU1Bayq4sX4PDMQtNhfb4yHOIlKOmDA7oRJ4qdeQozLBjCf+zSO5
	 mcLT6J8rqmE7kyKBILQtEzdZub9Ca2rOsncGh9vZ6ZniDYK69LJJ0a651wsPs9E8/h
	 Lf9BOHzjps8eVKYNXxuPmnbi9MuGPUkctp4lXFFtU+5CbOx8r7PJwOqxqo2vVXxF4e
	 e95Dlrmi37hpg2yXRQPdIJOMNpkDa4PX9rdvpiu2dA5IXKnhhkpBGjbgJsGS2NubhC
	 1PrV4ssbr2LWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74C91C54EBE
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307968741.14306.3268058263535024763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2ec1b3b4cd16303ac33d52857d011c4fae7b2dc3fdda270f15bbc9bd002d77
Date: Sat, 07 Jan 2023 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673079687
