Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395EE7FA
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 05:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D107EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 05:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676784425;
	bh=Jtm0glrxDRI2IJ43wD5+acLGLRojJrCq6MppCevn+GE=;
	h=To:Subject:From:Date:From;
	b=A/Zr/yO6PIiIkhnkMNTuxmAVGpNDrSCvF821NZ7maOcIshoAIuNlkeDxNGKRliNFE
	 ASDq8jMV7hOCo1JuxC1XPC20aha4beyTNViuG6FDqskiOB3WO3q1bZlbTB0pPcJj86
	 LNwZX8NV63oBQB26ISKVL39tiqEsmLCYt4J+uTPCmfa6sRWHKqzCzJHdq6GSDMwOvT
	 A1XFBLBXdwfV+5taCvL8PUgkIJiZ9VMIUAwDtNJAEsaiPw85khWkwTpYfVhMK2lLU4
	 +5YLA+L9YB4W8GJODcSxgHUgHPZhA/cJsyMlh6lCZ0cfaQRfoNo237gxsB1BpoN8k2
	 LhzdVtO/F9K6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7546C05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 05:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167678442574.30830.5151620297409652265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7786fe2ecc6ad9f6570829bb8ec115240cc0b25850f97d421b9c9bfa52473538
Date: Sun, 19 Feb 2023 05:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676784425
