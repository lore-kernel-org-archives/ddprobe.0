Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B182811
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 04:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9227C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 04:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690086128;
	bh=e2CoyoJoQMLG14eTSDclLAGWtkRSJgDBhfmKYZcYUH4=;
	h=To:Subject:From:Date:From;
	b=X7bIOL3pQS7dnrbKm69YpmzWRtzcUB1QzoCT1QICIwZVtvV7OvzsRb+uhTuzJS9na
	 5odPKtYH/T/PnEAjVgxn2JMnPjUsmgUzv/jJpZRxhhfWFMgoynVnNs3HWfne9Is+Id
	 BjWYk4r7M9svtreocT9y9JIRWyrPoULrsMc7XEEVUnhbMaaYwDNIwPQqdCVK3xuFY3
	 fTPw9U2NFuxaNm1VAgdf+IhuWEUxZSgXwT0RBGqY76hOQV2HUJZ0ht/GmfSc4TT8B9
	 qFGuShOywpyRPMdBDtivAMsDWcdiFZRGk6TioeTBxf49fWn/L+vHoB84EYVTcS0yhb
	 96fE3ZvurMd1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9656C001DE
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 04:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169008612876.9309.4109580062770692454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82ddc50a88bff4c7c2a84fea6ade35897888c3d8d07872f9e2c99104648dec3
Date: Sun, 23 Jul 2023 04:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690086128
