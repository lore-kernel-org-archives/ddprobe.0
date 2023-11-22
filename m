Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E211863E
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JElLBb2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A551C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700652496;
	bh=HOwZNQYTY4aUI40HBqTCdx60C1oZwUC0kiOvdHP5GVo=;
	h=To:Subject:From:Date:From;
	b=JElLBb2ZkVbgia/mOLyPTq9A1WVattbZ4MoTLz96LVWuae5y+UlQ3jkAXEaPs+d8s
	 0P3PuB3wSNt1EcJD7oLTzhBsN4LOaHbRYvGFXKpa9YTuEtRD9EESFu3jJSkW70TgJj
	 ubu5VoG1PRDgIsI5I+60eAEc5heEpvkePmte6vEsuO2WNwNqlGw03XM1WGnKu7j74V
	 aVeJiyNbti8DOvodvPA3Dgln0jwlkbRWOmDfYtHedz1IqCdL8/JCVxvMRuuls9MW7/
	 wI9wO7jSEGZnCETpJObyzao0fkWY9+g0SQgij7WCJ77Tm0aJEXSkpkNHTMFjDhn7D8
	 vPlpupVEmjJsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71832C61D9B
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170065249645.29620.6097556371860334460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dd8e6afd83a4a1728d68b7ae9bfb1390a4d4507b9e5cf8d3333b808d74a30d
Date: Wed, 22 Nov 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700652496
