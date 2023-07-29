Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0038013FE0
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 11:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8960C433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 11:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690628528;
	bh=lQ6tbg1EJXZVSQUHHk3gq55aTX4f04CyGLAO4M6nSmA=;
	h=To:Subject:From:Date:From;
	b=JRNCxc+fCoG/O8O4/NPIfa/FhiKlcGHU4Nj7+dFAVO7KVlrgSEF+4ZfeXNsXjOiJ6
	 cGBbO0AEZ/r4Y0lnuj+OFRqHGOdvoCyzJUsDCVrG0L5y/fpB2d0awsR5TIx9PbNOPx
	 G8Zytfl6/RsuER3L/s1iDjvoOyinL5ZCXJCMR1NxZeuicC7/+l8/XK1smI5ysRcYZk
	 zZIoQ/CVhJQQdAeCLDxCTFlfM1o/zFgI0H6nO2aTrFqeslbhIuMPuiFfOApF80eWo8
	 NgXDsbUO7Dfxxn5JhrcX4SLG4Liz1JFB56nTWeWc2aNZdoLm/5j2s/S0qx5dCPlGXU
	 m/8NDARZNSwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7110C001E0
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 11:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169062852866.5973.1497111330308567050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad97cfec0bf6f46965e937933f9bd89665c661292e368b0e4d12569455548d94
Date: Sat, 29 Jul 2023 11:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690628528
