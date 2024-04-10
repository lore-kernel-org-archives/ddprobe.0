Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF97F8F4E
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712743097; cv=none; b=nzm4ymY/QCx1PT/wHJdW5ZGOBwAR9voboX9WqrEEKMB5hN/s1bo+7gITiPCKfpOip0T0VCXxmZve+erMx72yBRo1rv+D1b2fhenGbaqvGcotPkvbvRv8o2Gt+EuTV4JnB4YBqNO/GWf2KTc4dTVQTlgTZo8IBEcxSf9Vaukih6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712743097; c=relaxed/simple;
	bh=iuoXBh9DuewTQoZka+POd+MlowoiL55miYWUIKoGHLc=;
	h=To:Subject:From:Message-Id:Date; b=r1Gknrx8jjbVTfH8Q8K/35aEhpk9JRLXIrJ+VFSZzfWZB96+G7hkhAf2gc/Pwm+Rg9ymiNTjTQ+PtyuRhM0WdtChu+2t1t2utDEbjb7R/rLIR3jS7tHqw6xrzlhohfOYX9NMV2gXzSDTvnJ1JAiFUB7VyFF6M0ttzrAry2Ci9Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfIKLKDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfIKLKDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EA25C43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712743096;
	bh=iuoXBh9DuewTQoZka+POd+MlowoiL55miYWUIKoGHLc=;
	h=To:Subject:From:Date:From;
	b=WfIKLKDPm+baraIrlwC1kgHwCAnLr+8HAug3qhjmMtlwX/q6xwaxy+GV+JHkyCGO4
	 9/kqA3xhVVp6dw5TokJPG/vK9vXqJB2/RHUTvDU2zzpZp7mf0NAd3DJ2NhAPC09Mlv
	 OP8H5NHHn7vCbiD7fUJMXPKB9k1kVfe+vOuvPGxkFASYkW0rVQFyEsO7tkUjzMBFKY
	 nH9YN4r6bEUrHb4E3JN+mupzaX26IOzRwLeS3wUYIqYXyYNvERav8JHFiwtHgNEgWH
	 xJTSWycdVieiVh3veVtHPV1En3Cc+OyWftbNyQ1GukViVV33I5gOTUV9lTf95gAJRh
	 ZKKVAOvo1tFaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AE69CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171274309647.7514.16104309433227646987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680c212e17172e749f266378b19d36ed174ba397f1efc8553e5f920b59d090b2
Date: Wed, 10 Apr 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712743096
