Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D01C7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 16:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19936C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 16:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676651646;
	bh=ZOcAPiG8rfON6WsND6KnW6zb8RiN6/vfQ4BZ1F9GpHg=;
	h=To:Subject:From:Date:From;
	b=gBL2WQCWAJCBq4gke/0cQwk+AGkde/WO/Kn33+RNK1BssEawH9GsX0yyrskKgsNaH
	 L1dphrgJf2+B2xxeJQhL8qM7rY6Sz7DjnpK4r3i4h52rwImxol7bNKH9LUgw6z+PTT
	 GXGymWly40uTw5hnz/31eLnWV60Ha2r596savKCdR0I9nRs8e/GdJF5S0WPCFFu3j5
	 45sakH5j6Dq9L6IBEin/s3smjrWsZHj/5WFXJ3+dJthPlQkiBUunXgRIZOXiXN6RdV
	 7KdqaDZYY2UZCqsM0YiIjQddRTZZKIv43AjErmwXr61lK25DLuoCpOLcPxq9+O/Uex
	 mmWI0Fe3MxZYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB3DFC05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 16:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167665164587.31683.12404167529554428392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc84ac17bb47ae30168731c441547d123c8762dcae9797bc7bd8d8c0b462974
Date: Fri, 17 Feb 2023 16:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676651645
