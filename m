Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6431FA5
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 16:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BFB3C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 16:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680969666;
	bh=Pqmyd55UDzUaU9o5Vqot08I2vHSUDY4OpFlWf11sufI=;
	h=To:Subject:From:Date:From;
	b=NyRtmeh50iQZ9OL/BxFphjkpBUnvNFuOJSju4glik1aLRCwdu26Rngecs9RKhlL1X
	 vs3Zb20Ew3kESV7J6B4YFB7gXi7X7bpmgIxE/pXZuaUEwzKddGMljLmyBXfxDuMPNc
	 k+4irXmq9GyYdGwLeUidsHsS9T2/mtaQsETBRpCNyy5iCKlhV3HtoR0dbh5/L+SXzj
	 gIeaicxDQSVpQdmD3r9JxPs/nuYX0ge0rwfJu+I4d4AXy+KKqvSBTapfj0jO7yKMOU
	 I7iw9M7dxMczSh5VL7hPzuRlcsmYwhHJagpmuoCSc6DmosqCKEYJIHVPPo3W8a0EuJ
	 OW9T3yRS4l/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0149CC7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 16:01:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168096966599.23679.3160107676938777706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb3b80caa94692e61f2131206553e429184c884b680446315f5a3ca6742eeb2
Date: Sat, 08 Apr 2023 16:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680969665
