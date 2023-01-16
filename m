Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43401108
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BC6AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673848887;
	bh=LCCDpb4ilm8TCXfN4qyUIYKbQCa0QL+0FvagFbQRJN4=;
	h=To:Subject:From:Date:From;
	b=m3NWf8oZ7iAcDmvjZe/7UmbRNtPKde3B3Tp5RwZGEVI5prczXw0fwBmA9Fj97hJkN
	 QqJmWee88tS/df3J/qjCzcnBRlUxJwJdEuzRpVzcvlfaQY2QsqMKxAIY91zurw9QCY
	 uES1TOyaHGLGbi2gLxCJ1yHcbQ3owYEsBbg/cYPZRosiUohKW7/3ckehSlcrfl03Wk
	 cvBOIlHSTmJSm0N+EmrlUChNkmzD7BtYcC3KaXSLEk8aqnj/B6Oil2QP6Xyx+f1nUp
	 dyI/mxPrMfKhpgjnQilW7oCP+HuR+zRWmlFPo2fucKd+f9Gsq1YmPFTWBaVFhGH0jG
	 W+bWVVPM2p/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F0D9C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167384888744.29712.7655496168486656183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38523a2c0ebe323ee4a889bf5991877a10854f687b66703feae66982f7b4da43
Date: Mon, 16 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673848887
