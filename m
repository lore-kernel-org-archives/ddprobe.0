Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67797B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF25C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665735653;
	bh=9hSd1xQ4DX4igYdeUgoRIZI1OrZWKGjk8mGiKi4LCEI=;
	h=To:Subject:From:Date:From;
	b=ZWe+HQx66C0bmH4Ht2psvYL0UfrTX7tmLuCzWW3zWT5pPOmTRDxIQf/6JscxvFuCn
	 6tndGqZXnu3OeNTtUFTkhQWuRIsmRRpUTT1b8H0iWjducmO3rYABGOhJuEozWL4E1D
	 OVKdTGqbTaF9eAL9djPA9KQ86By4n7hGjkGszvviml8PABD/Oot50QqQIFOJ9pS1VE
	 PcAZiXqsCEVHcr/zHyHanF3oWmrlfveOG2Rq/nYCNTratn/q0cJ6BtarJRJP/6gVkt
	 NsOTGoGsCWp31n8uOQ1lYLyDLbqWjUSlJGupSV+mRh1IKu2mjHUbEIkEok12JRWwUa
	 /19cTiKIx9Hkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548F6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573565333.21662.153050456764783621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1ffc504e806acd4685cacc134224cb5b7d58086d538d336c36d5876b54e619
Date: Fri, 14 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665735653
