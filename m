Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA34360
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68042C433D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663325453;
	bh=JLeQO0LoBD2CkfXWHNCCUWBqW02kn5SO9IVmXMmU1Cc=;
	h=To:Subject:From:Date:From;
	b=Y7uTUmpZRtPnbHGmMnl/EHTnj74LCOYaSUmx2GRtQ+iI8bkXOsSScQRQs/OGUbS8W
	 pbhQU+yJqLbUHPOLatG16521TJLUeDtVUcuSK3HeqMb6y4BW8Kyx965xnLTL065vHX
	 1N2SlRwwwULhffFQ/vU529uwjbOViS/F5zfPkQeSdO/Jj+CnP7KQ5IJbb8l8BdBdGf
	 2+V3YJ9G6bUELDk6fpaL8V9xZrj1zGzmSrcfTT7/+l1gj6TxfTB0t0tjWhAHwO1H12
	 CtVW2R5k3Tk0xDUunttxqTCmF9StvxjBqjx2llnWsj+otioeyTsQHwjnPIrDn2Zvgn
	 goVjV6Vc+Wr+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52288C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332545332.9333.14547895892101086646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a0151f86c21f980a14d278224c43ce42cec56b9858013623217e94e8637942
Date: Fri, 16 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663325453
