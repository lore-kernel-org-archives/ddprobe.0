Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5C58BE9
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 22:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9022C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 22:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679176985;
	bh=928mRMdDuiF1dOYyGcI2H4cqzLokLWrGxUJk9WMfufg=;
	h=To:Subject:From:Date:From;
	b=BzJyLhkRev3eoTCnMpV/3fvakG6RgD4MNxgG2hL9rRcQaRZrzKTw6bvd6YyBvHhQN
	 wm5rcdVt4Fd1rpKF/76Z+zMtHt4ejm66wKVRvS+87XoQQ5d2VX744vAk/xxZE4z7a7
	 3IntRxlZcCl7V2eekl366W3ldLVaCJGZidkYNCUCMuKyZ4BhWVpbsu56to0UUqlpxd
	 E49GyNPglxi7iyaFzaPg8sOeMJvJeuy+U5Tx0jOcRHbqXoThl/1SAGtRGTss1wYryJ
	 vyZwh6kjKHVodvM62obRHjY/iGjlBaG1ygGZ3HXSROhzKorJ4vksvRLfMkuTa70/a2
	 Pe8Pa4X7mTxMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BF7C7618A
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 22:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167917698581.22038.12963350377551741340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fdc615833018827dd331cf6f6687ff41c28e78e353fc51b68c8d9c8da7ce8ac
Date: Sat, 18 Mar 2023 22:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679176985
