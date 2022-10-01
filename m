Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D3628E2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C4AC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664636453;
	bh=Qgt621scPfIE4QpzGWpivhyaSyl1JlPKWalYjAhP1Wk=;
	h=To:Subject:From:Date:From;
	b=C9ranelnuH9bhAhk1zr7O12kDACzwjQ8DLS5mPtMtUq6+TV2ezLmRCXuAw5cmH8h3
	 rHNVQBhzgHQub2Cq15j6Hs4ElHhv/4+LRBvQ7CRPmwGCzhlyy/wNxbwc8yUDkz6XkI
	 dgkSKWGbJW1UioTty7DeCt1IT8x7676x0R6//9RcOWhsfUab2cF8a5LYZfthh6l37i
	 SwqhsJvYbk4Pzx/aWemRAEuoeyNN0Oa9kRLsDKv2Mv0xL9X/nq3CBxKfcxhSjsw/zJ
	 DKQ8ptInCAIq2pgKr5K4KG8h8R5l5IZc1/6SSePqJ2L3lwGLJF02Gcz6BngSqXmR0H
	 2+zi/zNwNXW5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5613DC4332F
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166463645334.4175.2177992437607619579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f107f2056274b24af8880f4d0ddfc318c2abc713495bdfdfd2a68f331b3f03d9
Date: Sat, 01 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664636453
