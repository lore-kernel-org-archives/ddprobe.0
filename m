Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4966314A82
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 15:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BDFC433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 15:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694879108;
	bh=ly3J7fO1iGgVMzLv4qndtag3sQMxJN2YCKmHMUm31R0=;
	h=To:Subject:From:Date:From;
	b=q2UW9aohBmTCrQ+C3WeoFitg4+N6W71Q6AVvad+7WokQY+CrAFvd1fSaH7nIKk01y
	 Kjw2pw4QoqUyYtyFcNnSqePu6BwQHB4BXMnKEAd8fhYqBtV1+BQUEl4pyOQqbF4kP5
	 udOSWU10eKQzTxsQrg556qFuvjHtVTXfuqGcWzmmWDiDScAk9Ib0+nJ1eD88IMVpWn
	 CUdJ8bI5e2Uq9ugowO7XS6+FDdI6+2P+gNKCwyQaRxaP9HCnZ5nat32RtV0Y/X8FXd
	 S6dy2za3loT0dDIIFQzGFmHfDjNsLysxDmz20MMajJwpvxv8MAeCT9+RA1VS8UfD2t
	 W/bs8KRR8qdzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA36FCD37BD
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 15:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169487910868.32190.3495702299316867422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d01962e895e664c4db078ad889b081ef6cc5c3cdfd5c1ad642db248e314af85
Date: Sat, 16 Sep 2023 15:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694879108
