Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D95634D6F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 15:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBED5C433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686668828;
	bh=j5yoptOHYp2eMeXtlZiB2a9NKj6fCTFHEYA4G2tGxDM=;
	h=To:Subject:From:Date:From;
	b=s+IgnGNjjcgMoTZ1rb/IdaMD4GqaKVJWdGr4OCKAQVITx2j68Nxcmq1qGCyZXmIbY
	 SE1THD3KHJ3y3FctCpOUUSVN9MPhDSHBevA2BiPz2L86vmK3NOgTlBh7Yute8p0oZM
	 GrC0/y2zUoLh5+19xvLpjFbTegXItbazULDD223Q56WqYF8WZIZzAwuWB1WigAh5NG
	 Hag6yGOX7Oe1B3kTz8RIo8bW+Wg3TWTi3Y7Jrjs8UVt4yDl0hjCNaN6Lt2t4VXGyE9
	 C9nZbdX3uZZQXad1k2OSqIReNMVjQ6NohPs0+fmDdcOoPl+XcoX+6oyP1VEsrArr1O
	 nGxHkRxZogj9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC27FEB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 15:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168666882869.6215.8971387767425894363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80005aa750276e0699ec61a2d2d4c89f88b8a3b5fcaa8cb746eaed680cc5e0c5
Date: Tue, 13 Jun 2023 15:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686668828
