Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81012571
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C72BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670778687;
	bh=uL9Tgbk7709yERI72QHxLYccp2YOZGKWgxaUP+gym88=;
	h=To:Subject:From:Date:From;
	b=FjSMEdOdvoRq/E4/736j9Tkl666dDX1OzuC3n0UFOWgo0HonYU6SUjplenKba23V7
	 CXwGL2T5KvFqIvb32hN/DhA00s99PifVix9Yq17HwRrtsIJ9+hDG7tRogk/LKlGvw7
	 iBSy4waXm+GDhkM2kgGPUzZRbtL9J6J1wXZraqL5gW+MgInf03FFOMDFZmCj13uUjC
	 HPbck0eo92Gbbe856z+pBlMfafV3XAPUiMYOmPP3UYCCHv8zUQOj+g4ULRUHVHGPs4
	 JHlLwsfyoYF3okhEKJ69m86pICaZuTAwfqnF6An07h0mHJb7CCzmUNCcutgmwHmioE
	 h08P/VQUtvU2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7041CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077868742.21315.8039478454655819509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2864b2159c4e53979b54928ad74ecb6567cf3b1caacdbf1519beb32b6f72fa02
Date: Sun, 11 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670778687
