Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D877D7475
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822F1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670885487;
	bh=zR/PGVvBZPMXKJqDUcUwmav2FcrNSWy5JAh9P9kuSRg=;
	h=To:Subject:From:Date:From;
	b=ERGxvA6VDTmdi2/oJ5jU/RT3qV1/21Eb77g2sHwMWMIC+ULnl8ibuxIz7LWnEKKY4
	 30TXAmaep80iX9suBZbOtmDMehbA5Aj8mO+PVU6GAaRrNXL6XCIcHLl80JlBBG0fzN
	 KAjOJb/T4lm8LBU4CFMj0vvSlGPXFD2pFPKmRM2/TxN7OQu3YnRychQxZnclOsfaMV
	 2M1IB7VWmJciYgRunN04p9AOQj3s78BEwQjbZlWfgrSDNqS/wHj1WbJWYGA1tgaiq/
	 ZamK5b06pP+rhriVOiDwxXIq7RlMnY1OAsFpdOgLiHwmaocuq+9KIfhnrxwFH62JNZ
	 qd9UMcBRbWerw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CDCC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088548741.12526.2229869193458797685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3cf4e3dba53cd131285b43414b05de64ea5a6111fa2ad35a579a530c3ebf91
Date: Mon, 12 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670885487
