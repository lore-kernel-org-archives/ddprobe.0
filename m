Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275E1659
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 07:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B21C4339B
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 07:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677482165;
	bh=CODYvYJvyPBzIYkaLjsi3N5oCE/Fo2MgDRycRDrYyKo=;
	h=To:Subject:From:Date:From;
	b=CcfYL0e6PWaTLvIrzxACLRGLZAOVOrv6eMv0sBcrt88fSyiYTtqm4yIZ12h0Y0Ygn
	 4oLYbau25CqexgW9ETJEqLu8L4y4JLrDaw6O7Gotf5z7D3RBgUOG1KeR7iqGgojz81
	 7QuapxDM4FmDBIVTK/Os/cqlzkOuZUeSLowxzFIaaCoNnohuFufRRaXqUdV0fii2Mb
	 bdodlX9u8XdwnROgR2MngKPBNlA3X72JBP9k+blzQpx/nDpPg3oAXYo3GMGOnf6yb+
	 Gb+i8WuY29gLwudIN+PzbtDR23QrkH0de4s9GnhZn/RMVoxu0ibcfgUHv9PIUMo8/y
	 gat07emWOOqRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4D9C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 07:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167748216576.24652.12122115905067448946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d77614d8b6d6b46e412cc2c3db32136911ce796338fb6f812739a1d9da8de1d
Date: Mon, 27 Feb 2023 07:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677482165
