Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C1CDF6C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23083C433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683894306;
	bh=PATe0QZw07r5GSAX54iSiKS169cExcP2daqq6PyVAzQ=;
	h=To:Subject:From:Date:From;
	b=SY+zpkgYrIkMcFF4W8u3k6sCSAAu57cYtaiTUV6rjztPqndAC/y0cxcyPj3Xnn2/W
	 TlXlIL2ID4G8N11wvGMhCGQyUEGeMGKniyijKngVr41gsZrgxfVA8qDUFY4LLhUedv
	 UVJnVnkhg0GrVxEhEXNFBwGKycazq4RPd9G2G3VV33vYQPuPiGU7X/GnI5jKWDNLt7
	 8mRqEwJ4sfrv7URuCIb4I4aDUZCX0ZTy2D7qYxevTaRoNXBW0KC5tIA8AAuQFutItO
	 1xNyl312q9s9EkrxwAvd7ebQbkveRJcufjnbHMLYVCOUCNDf72b+Cq9OGbrJAYjkdE
	 /69L8rOeXaRZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE15CC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168389430595.13367.8094379209319767099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00032d08494afcfbbbe0233c652f2be700072d5e92791af91f7a80352ff488d
Date: Fri, 12 May 2023 12:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683894305
