Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DC97462
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8445AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663693253;
	bh=NdT1YZssoL8S9lXi21qBFoUS4GuizTgi1JzvWDBsd3I=;
	h=To:Subject:From:Date:From;
	b=eynZJhxeuvFr6qBJ0v8HRhd7uirPvOAglkxbqvuQYbi0D/e1sB3ymOsw61BdRp2NI
	 3fj8zkRPXvNyMCqkaUrKwlYqSvZHMa9X+wzipuuc/tvItc9fPLqC0wH5+LBF0HnpIv
	 0/BSFrPasO+tJ0e7isvdTO6VNLYYdI6GDamRLDK2NPIVAbEupP752ND2XT5eLZ8YGX
	 38Pb57HhFCcv7WSARBP2HAvWNP13J1iaNxjP61nmwW/dQk+UmI2OEQ+g9+dB5WBb8e
	 SsRq2cGmos8aHaDgIl50Bnn+ftmDBJzrR0XcCNhALz0rlhPR1QBQlbh79ZYQ1E5IZO
	 b6O5/PvX8q1zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD9BC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369325340.1973.4062466528455739181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef318c68a42a00af4db33166a5415bce5dfe674359abb02921719a6f06d92b24
Date: Tue, 20 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663693253
