Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1EF6110
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7414CC433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666306853;
	bh=XRm0BVUBswglP8bRFe4bUisS5ls2OVEKtwWfM6Fm7Bg=;
	h=To:Subject:From:Date:From;
	b=d6r3+4uXxo0tLkoWgxhJmcsRfQccnTkYPzvRpB8CaOZN3VZMGn3YukRuBGp4bpYFh
	 iP39wEdJlMehzU6qNeTwPtGU6NVrZDrjPkb3ksCTg+AVYP4pGoemtlSbLAPQ30AU06
	 lRPW7naInMjU2JdiJMTM4e7U1UAYt/ZZpMCEeexM8NRP8ZkZyPnsnESmStj6fMISck
	 H2p1BSrWvrzCNIwDa3++ue3CASDcpUpVvcBglZ+s1q2ny+57EFv1aHM5Wpv0R7+Rzi
	 xdUIvZbJHy+G7BO80jL3U0nOZieqWzpNsQcKBDLt8Pzhl4XzaCg6GJuuuIViHi2Jx7
	 Vl8IUJBDZ4Y8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59583C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166630685335.19570.15813075885873117918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f299ea8983e177a6cacc0537c50ec3d1cba0b3df162b30314009046ac4a25f02
Date: Thu, 20 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666306853
