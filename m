Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AE6EBF
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64B52C433D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666753253;
	bh=3fG5GvdAG5PxElONoaA5BtfYVi+jqpMGXtolK7EGuaA=;
	h=To:Subject:From:Date:From;
	b=GsStqgAwhvuSwUAswsodZmb9tH48flHkA/dMzBth2FXkWfTqwteTBflQSLNmdQNJu
	 5vG0rOyNzKEyFmV1B9rXsTcAuB4IsVxq/b0dRoDDryaDw3v0bO7ixmgh+N2iC+aRJ1
	 uLjaHywIHiB98W4qEfn7GUqsVGa/Fmb4VY0mWDJCLfpI5jTFlA4zT1TADCYsYmxUei
	 DCvHQ3hv6iZ9nh5hYixB3WYoTWJFJZYYadGi9MgmkrEV5C36bbbCdDiFew1knPpmVX
	 Jt7IzMA415JxmGIoEDD1szwrbMDlxW9CZnT9LAD6KrSfBvAyHBxMiIwGfhuaDEKY+J
	 x6G6zU1/bMB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF8DC38A02
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166675325331.21460.11915746608607590515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8977cc128417103fc79c1907362e97a13d4f6e76b6fdb31d4370e51754dbbc82
Date: Wed, 26 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666753253
