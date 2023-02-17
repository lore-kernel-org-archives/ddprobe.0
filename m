Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AA0388
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 23:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA867C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 23:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676675105;
	bh=OZkvMmZgUEpO8WCXvUIHrw2x8UZfLR2gjPU7iOrDNNY=;
	h=To:Subject:From:Date:From;
	b=sq4CKXy7bDH1Xl3rVaIPx+4NWbYLVslByY328W/ZxvKXif9xUT5bTtxI2NJUH8AH/
	 cht6zpiZHjLhdTlw3cqydmVAtacyWTHZgV6BsHuS0a8u3cu62V7ECOjsJpY/j/baTr
	 pEFppLC8MwzFkm3WmSmugOd//lfeEo3cTc4pYifiTjPVGbH4o+FTTYs6Lbfiniphcm
	 RrLZL19gKJYG79ot/r8fx0lRP0VLlxlivs++IRC1FcisInqDx7lD/sqT2vz28X1AH3
	 a+pBy8CjsopX+A2fv3hpORN5T4JScvtXPLrcGqQthiGvx2PQU00ZEejoH21VW5aJe9
	 k4PSiRdXle3VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8C3C05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 23:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167667510575.25975.2655514274821341670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7107ce54c2b8dd7009da144e4a8f2804802b89ffc5602cbab0ba8709241e7ba
Date: Fri, 17 Feb 2023 23:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676675105
