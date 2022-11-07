Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D283815A9
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9FFC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667788854;
	bh=lvXl/X8mu9qJZ2IEqufoeIgW7uQOhRv2ne3jH7T4dyc=;
	h=To:Subject:From:Date:From;
	b=LGiepPYOcWisgVaECQR4QtI0W26PaVZN2sCR3hC83bsPNFnrAp372T0jsImK8fglp
	 u/gQ9lyk8/TVEbJXBGooDI0zowd1cXEcUpg+j7KAvDjCRtq9616kp8BjeRkRh5gmlE
	 mhu5VmIPQBo5qjbtmLQyLEtWVtr/xffLsR3HG0gQED68ctgTiz7tiaObO5uWkSAG1+
	 eNa1z090uybb9EAuNg2rRMINJ3I4lml3MaKqduP2RCwWy//eDdnAlrbUAY5Lu95Fab
	 VY8vu4qCPleIo3CnpTjwUcbdU0K3OQ0e+fEgbTXcW9j1AuQkm1C/pwTXSv8X3k4j8Y
	 BVXsI9RKWg8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55134C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166778885434.13937.8291820273775976386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cfe9652b31542fc7cd817d9e061cd2b4a71de2ef6e6038d4e16577b14c4c4de
Date: Mon, 07 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667788854
