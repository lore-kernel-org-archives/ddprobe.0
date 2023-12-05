Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0081214AAC
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R90Ph64a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7856EC433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701762496;
	bh=2mSfEWVegy7KGaVcjxvZb3WMBQAClgbMiu9bwqYbFZM=;
	h=To:Subject:From:Date:From;
	b=R90Ph64aY3Hi7k4vsOpc0rpSTxb7CE//yuCs6ZYILAqbF9i32k3xDPQ3zLG08AYhG
	 jPiV3hhOTBt/UH63BVk8PeI9nDkdc+4mIFo33O28q/du5n47z42wJeWd1Hr+tric5b
	 A4EKr0oljyQyh8NHgEBSorDjdXrlCewiwgx3YyrQdQUtfuzH5rq/sxSC+/trJU+0by
	 rXAf4+Np8KRq1pCXOjIPAJJnHhyLrL0jpo2bhOuQd937FoBen32eZ37CHQ55/rZW8y
	 aX8PV/6t0UbarxVaJS5fq7DFweZ/AChKMXQ4cvQ9FdefJJL+SvIYl1TfR+noejHPP2
	 /sVplBR9YvMpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608B8C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170176249638.9045.8356228936910953908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a607b5411ca85e84d849bb9d2fa74837513259c8c8e3932b19319f1b8a430e37
Date: Tue, 05 Dec 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701762496
