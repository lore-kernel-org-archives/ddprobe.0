Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8158B10EF
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 14:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7499C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 14:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695739508;
	bh=ZmXn+2NKBm1/BvZLgrJU4L6iCAjTkv0vAXFYZVz8Zlw=;
	h=To:Subject:From:Date:From;
	b=R4tOjB+0Uti3k6sPUFvDaVt3t31yKb39nflit1r0/aIF774I/DD4gL7chESMxGsHm
	 OJYAPX1itk/Ds41rZVJ/GKJDjK33+lxW2xM8fvvAUKPGhtCGK5x3z+Y4l/xrB9AEBt
	 5o8HOzkbDOevMi/8QXIDaqhLyw82nlD8fjWxjTES1UQ4yBG55pzcvG5utxm1UBVp5y
	 wcqugfv1XNkLY4z+r13HfVg3Pam0FPpVwXmxlRTsfO5kAiWQ0+nTu+xQLtW6v1ZXwR
	 nY4TQa+PlWMSaYCE6+aDPOhIehxzu/ZfRXo6u/Vz1ZXJHj5PQygIJ7X1HYBjWD/UJ9
	 VD66Shm6IWD/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C757FE7E643
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 14:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169573950880.3723.14249351957428041898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967306f7a6e15f367bbec31ef018c8630a1394ee6acd789071d59a43e29aeb7a
Date: Tue, 26 Sep 2023 14:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695739508
