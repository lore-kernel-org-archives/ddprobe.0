Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F058A7E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D728C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671509487;
	bh=Zq6/fqsJsA4Z4VpTFg4yTPiW42yY0RsQGc1MbFGxGdI=;
	h=To:Subject:From:Date:From;
	b=MvJJqZuUdlpNOc+1JE4024YBCoIMkLWNAICD8dwyQr4k3CXqO9jSyrHMfwLL7iN8F
	 ES3h5a1Csw+9P5MYrX+CYPR9sHFx5nk2aro38bGoX2vgLTyUPicbG7/MHC0Em/c3n7
	 5O+HbVzRmo1MR8vyCNYaSnHcjqHsmk8cirxgEaCX8XasYO9Lv0vSG3CuRfjOwQ4Xzc
	 yo1OGALYhQ6NPcW+BARQvtyCDqdZaGbtzRlS9KJBbLVmIN5WWlP3QLiEUrHCVyt0H+
	 qZ+hO9Zalfd4UqRBoeJKKdxQmolArvzLc2Okrj6E4DIAClzhyhZ1387j3h4NxTu55k
	 Gw8A63HgWs9Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EDBEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150948743.31841.352640948360538327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6028259fe2bfd98aa5528fff9d9d1561767d16cf35abb0e65a090819eca65be
Date: Tue, 20 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671509487
