Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41476629
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 03:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38A1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 03:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674358925;
	bh=jgJmOxEVZEMC8ATYVFD9iDIZKz0Gql6lmehRSCor9JE=;
	h=To:Subject:From:Date:From;
	b=gg8P/tSzvazYrXLNilaOSrspEThGjV1dHaOHmiyMCxpl1mtlqyUPQ8B9G6dukVeKe
	 ZGmQuTpmSdkZUSV4pSCdnQc3IcwFHj8gnms0hBozLVnpXm2NtCvS3kTaSOOSxXb77w
	 uDce2pNG7xX3dSCYqYqOdigYrDL28tfBbhNy0ipvWzP95A0tFk5XtZ+GJXmTqBODQO
	 yjcVIVRbTEcesiZjL8KqBcb6+I3S1iT8WMzXi3udQ6kCi36aYCZy+gh3uaxAUv3/e8
	 mbBzltDHqfZ1Rx7hnnEQUc8NPQrwwD5ZIyborP7d2VWF9U027+T5WrfS9cTL//CGv9
	 Mqs7NQWpRuZYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10E0C25B50
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 03:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167435892576.3860.13138712297592274175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272305578608ef90a266ff4aeec13a7ae480591d7bfc5846b607cb63103424d0
Date: Sun, 22 Jan 2023 03:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674358925
