Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A3B3D75
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 20:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB8C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 20:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690750328;
	bh=ZUY+J+8S46z4QG7digPDqof74l/lcj+11+Odjt1FqCg=;
	h=To:Subject:From:Date:From;
	b=I8p8qrXsXcRUPAfkm6UTxwd6OAu/6AaJCG6lqOWfOSQcLqK4LnDT+RQGymEWBaPKx
	 QzAEPocWFl1f50VU11sErbf7d8ao1omrk6LR5EKHH3+/gR7owgKAcGSKpdHrkiGkTo
	 oQlfvDFEQvhkDGE/J4ylMxtq40+SQQls/jbgWqVWxx5vel+kvXR/rSA2/JPOyTJvk8
	 TrcSb21R4dd5UO+2E6KzRsUliMVILh7AreNKO4PB8XpUN2LRhsg430j97daNx4Q9Rr
	 46VWSI0Ss4S9EFsLv2VmHRw0eNvj4MaVO5DXwV2pT4pFvxZU6YbJ9CApTmWPSEMVg4
	 BzP+bWNrsfs3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA0EC001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 20:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169075032868.29866.10135564301239512070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9403eefa50ff24fd0ff8f5384461c7b06c60671d099df1952b7d09d9c6d33f9
Date: Sun, 30 Jul 2023 20:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690750328
