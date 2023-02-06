Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344276116
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 22:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC42DC433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 22:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675721765;
	bh=zvoN4TxNOYZ7qPSd83v0FVfGCNAeieCDdZAX0/v9Izw=;
	h=To:Subject:From:Date:From;
	b=XQLGxoGkoRYwLScdOpgwErqDpDsZOdb8zxbTfDueb3S9tMYfgdHc+mTj7eSU0LITu
	 Y2ZADdZ3TcPn4WHslTB2ynDY9iIB05DoEFPTV7/4hgRzDzLl2SUWNb1MN6yLBnWjmu
	 bLjr5ujFtKKNzBpJGs7MqXiu5cMpsaWjQzimAIqdJL86X2Wf+q9pI+4Zb1Vo3EicmO
	 kQafk8mZOQfeXBrCkTlIHkvvNt7ehOHW9quSkEf4W71u0xQeUsoPuiY6fcaoLOsvpV
	 OFxQweMULENvLaIyb4n4zA0+01OEZYG0dxPLqw+kLRfRSGIZP9Nwb8DyvuS3TvndsW
	 GTGlfgqgTmC2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF6EC61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 22:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167572176575.1011.2618184752674610981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308d7c5501846602a8512728a16acb37d6a937844fafa017f4c53898e6e3db36
Date: Mon, 06 Feb 2023 22:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675721765
