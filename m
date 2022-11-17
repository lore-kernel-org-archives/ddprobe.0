Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95288C03
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDEAC433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668714054;
	bh=UfGzENWNI5aDQbjNas+DDEV2wf4L4ZW6lMJ+3u5OZGc=;
	h=To:Subject:From:Date:From;
	b=h7jYD62FOspbYY95aByAaNt9vvhcFs959/ND4UPUS+K5q4xbcdU9V8vZ8B1/s9fR4
	 F9+u+pvwUVrsRY+JV9buCbd+KSYKDzLBQ+b5ezAvWZcGLB6iudiYSCAIeUtItEWlEF
	 0Q2pAlaNXoYhUD38VqGC80sf3f7JCOVEWcc2nM/+SJz2HlY9Fq2FFCLbSsxKokftj5
	 +5AkG32zu9LR4GZdhUFqfpryMpRCkDZXy93aAXWpSGYUZeZdX9/4IbCjtAAk2AIaoC
	 bPeKUPmF+iiMIVcVYV2n8lTa0hygHEsn/EuEXIy42Rt+t2dOjDLwWd8u12J6+wwM7w
	 P+P93BfTrS5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603C2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871405438.5628.11736117965853129827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d287c9dc091870f1084929fff6da56e2a2c330cd1e6b89914ca7decc9fc26102
Date: Thu, 17 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668714054
