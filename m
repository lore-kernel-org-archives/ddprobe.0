Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09424696
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E24EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665004853;
	bh=+MWj7OFLwYwFdGM1SsCeNRTTYlhGbdsje4I9nrD8pM8=;
	h=To:Subject:From:Date:From;
	b=QqHVtCmLVf+n0CQZ3gr3UkFHeH3I3Ysbu0eSb6ysB1lCqKFCe0n8PDi57eG7ngw6A
	 TGpnPdjNMnCP6Fyz7gBitOnjyvSyfmJWTrNxocLkOQHMMbCc20El9ipBr4YIKnOJYx
	 S1JA9oYhFn7s178FDlfb2pWxqtGVV7dWCUzW0FbGgj+2JsvUVEGW2Y1MyaIDjT05rV
	 C4pRQrWmCTNXn/gefQ9jdVxCg886cKC1XxQs/V0WjD3+lz0yJ244maM6Swxn6ar4SG
	 vII7njNdU0BbDqIff7LusB/m/5IVLABYabhB3xYEWS6CLvac8DiHWmoMJ76cxaDaFW
	 tBmuCa8/irfAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C16C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166500485332.14866.6264151626625128624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff2e7c1a542bbf3e00c9771b297473cc169e5e65e0e1725f1b4e9563f2b15ec
Date: Wed, 05 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665004853
