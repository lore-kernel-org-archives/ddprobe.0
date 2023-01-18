Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96EA3D72
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C52FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674073287;
	bh=Fw1jcw9S24B6P8U3hMBOaiXKLSkVLCzjbidOhVKOxGo=;
	h=To:Subject:From:Date:From;
	b=JFuSffUZjS/z/QbFs9SyArGdnAGsBdlqJAI0zA8u+hcG5n6lbdQNu6zajmqlU+gSv
	 NcEwrtNndqrLPiMoG3lVEtRpdlRy7Ijou98QY9T49bj2r19TZ/NN249GAae0RdUAOe
	 A2X0wt9+YW6WUqooGzIcHnTXn+os6+pNuXDCgJ2x9Zx6QLHRI2gGigLRdebc5LTmpz
	 D8caXdm7wjykulam4cDZZuuKv6RSHSFfmMBptpZ6CyEJlntOI86FkB+G/Y4L2WOH1T
	 Faz19KwGubdmPg34KdLxyFycqPvfLj8cdVuJyH4I8Q41vdNfE9oeNTLWBjMMy07ibQ
	 vR6usoX6Wb4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF5BC32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167407328743.9354.1047314701359661483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4dc9775d01852a26e448899be65e97c83efa487e738331406001e09b9f1e50e
Date: Wed, 18 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674073287
