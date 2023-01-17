Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069764C9A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0E9C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673968887;
	bh=PwrRDzUlzNL8KlxZd0U6VdEdGSl4smPxmEkh9T2G8uc=;
	h=To:Subject:From:Date:From;
	b=VAgeBvG/8iBwqEnYABJmCqt6ECV7Xg4y6auQgTmMGaCWzhP/mRMQlYxE+7n0Oay+y
	 a28lW4oknvJOIvx5yDo2GRwnwI7VIMMYheA99v20tqwflxmGdMiwHZiMVmruvGwdYs
	 UixP2VCCE8qEkNo94CFC6Ofwls74w/VhtsQxkAL0LnC+3toV5aU2P6VJcen+h+8fYD
	 BbBHQloQAmf9joDiFtYiDeUbNGmMiylp7Hmumy6lgJf2YRgNm20qe1IIi112EDhMZe
	 TcmYwLxV84HOQ1LcF4h3pU4mavMRzyYpZ4AD4II29f7/hg9dOltYlDrRck4YLit/TG
	 iuPfyJXyRvSyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 836A2C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167396888752.16475.6456092240608677170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c9c308a93a4fe5b94006ef72685510578afd515f0dc18b6c5bdd05dd51a4eb
Date: Tue, 17 Jan 2023 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673968887
