Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D699017CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 886DAC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670995887;
	bh=HgOLVeRN4w/q0K/pagvOWhjxa1VLRjTOwPMKDWrijoc=;
	h=To:Subject:From:Date:From;
	b=JWsTQsp/r5sT11+DcIIVrmFNS1+rKO9Y2IT+KUMXzQogZql9FLQ4/N99SNnG+iJCl
	 xRxEAuE9rFWoRz37JJPeweDsv0lLj58NBy/4nPu8oDXt63w8JTzrxgOg+LzepKmutl
	 lHBLh0+95yOvRUF+3CQpS2P7VpbukdpqeM6k5gBSLwo/xEvD53NHKVze5NNxg6OLkR
	 RaS4XSkOwXzGa+SbZ7tRX6btVgpoI72C5PnrBhgsWwrSX7dJdPhc+OeSR6wi7AYDRG
	 65jvThgKePfKUGAW3kPGANNv+QlKuDghbRCGz2+CPFueLUxGORvOJQCwpOrtcSE1fA
	 wS8/pTgg1RVSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71698C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099588741.13101.14884185520626927883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072d07765fb885ddfcb8fd6ed62cba5db0159988527d047601ba9565397057d3
Date: Wed, 14 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670995887
