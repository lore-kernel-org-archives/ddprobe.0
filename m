Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA94A47
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02CC6C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687833789;
	bh=DLotWQfyrGWBH74jdczrm8VLLQjB6lvqXABtUh/Af2M=;
	h=To:Subject:From:Date:From;
	b=Gzyvj+Aw8JQtAdxdforPZ1fJFdf3a4aiP4FpE19adZ+H+PB9mP5KYO3LiMspR4P4D
	 aUZj2+HnxR3Qwp/BLnlcbGzEOhq9XQ8Nj8oPpiVZ5EozKwjXg5hIGQOq6i/hHjzzj0
	 0fs8czsBLEcNuNmu19XgdC0m5Awb0dHcKE+hQxiG+AJUbPqYX8ekA+qEofVscika/k
	 lWXqKrigWnxhiOeR9Vqd3Ck/K7smX1QEMwVo+3SUhQPweI7InVe4BTZhN5vM1mjl1X
	 MlNZL2NgvA9gDWIZwamr740LeU62u7nUyNcYxUoERXjOy6mXXS05Mo9sIOsSV4Y6u/
	 4tIquyWUnOQfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D45DAEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783378884.11420.5111237210196361401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d213042e977d9a85b2c1c315e786dccecc4afab411a3ab72db0ff2d78475b06f
Date: Tue, 27 Jun 2023 02:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687833788
