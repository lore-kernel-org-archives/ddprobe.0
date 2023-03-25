Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52534364
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 10:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE30DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 10:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679740325;
	bh=Z7ZjMOv0Jhj1Qft7thcp7NNsB5OeEjxwNbm5/dFIPeg=;
	h=To:Subject:From:Date:From;
	b=quGQj7KB2uylgh5WGXgVDQtVrEVAbJ1cKnjdi+uF6EvhqX6jtiDlP70u7joHwnoWI
	 m8u26g2abqUGl8vrxlwEZUb4XzEodoE79LKttv+UqAeBG8hxGIm4iCgK9CWuxgEdTB
	 56G2CyCp8PTuBPBCdXH9omqMzfDJy8s5TX8TeyAQeh4LcsMT+8RYI8B9EiI9a/Cmhs
	 5Htq7oXg2PxWfLgyvEwlCXBEfSgnULVH8Us8cIRfmdzoNVo3+Z7qylXqeg557gSin7
	 A5aTblZSvr3Z7lS/MYyIMV4GKnBxcUTCZeLAOHOOR2YjuSl2F2MUUkVi8i0plOKYeF
	 2k3tS6uYoJLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16BAC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 10:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167974032578.11287.3243094285023279921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef665debfc2447ce16f9111a1d2747512f7d5fd8fbdaf84b0359f610744d4c4
Date: Sat, 25 Mar 2023 10:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679740325
