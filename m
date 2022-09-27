Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBE47B
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF48C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664240453;
	bh=w3eBnjKPo7K6DAIIQ5g4uDNu+BvgEW4rcv16ZrkzBg8=;
	h=To:Subject:From:Date:From;
	b=lmxd4fWL03wNZHbecyozOGbNXg9NoRc8XtPd1eVGRhW7hTyU7oiKEdd261G/ejPMX
	 FqrthfPzP0dr8qQ7OwI9e/Sf1xnZdwmnqWPAdQ2IA+bP72Zbe+HheD0Fnwy1tQcpmk
	 JWbnPFZB0NjqLcYQdRcZhmU4f6P/nW7ojeTuoEVGT+BVFT/ePZrTNcRnkwiHv3A+su
	 fg8ra7/cXznOFV3CfwMIAeSd9uzxEazomVS1EKvszb2tfpz7X9BXt+ytDYBjZWtw/q
	 joiot8Z7aycsl+M9v3wf8Nhh5nX8TYPa1RM3YlixX5Y84uo9GN2+KvXWfI6L0FsN6u
	 hF5b+F6khfXNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584A5C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424045334.14890.15027939053439592142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda6ba18faa052a783db9585f5b73881a6763cd395de5210ef505a71c7f2709a
Date: Tue, 27 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664240453
