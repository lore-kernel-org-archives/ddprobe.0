Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68C91DFFE
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoNfvHrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726B1C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702052896;
	bh=zCRXJi9U8ybiTTXy+IvKPWJtaTx2CMQe8Krx1aOeT7c=;
	h=To:Subject:From:Date:From;
	b=BoNfvHrlj5PQGwknDZn9M7/V5jY6+6zQ/xHDvAWroDMqvmG9nfCHLYPNn8Wy/Z1s6
	 3OWkRub7bC1rumkiQtVv5qp1A9efRd60x2p8YKSvhx3e9cGK5UeCS6BPZJO5yytnuZ
	 ihFlZrGNDZNFKKLOAGfruw23ifq7MFrPkAJynv26kFyAdTkH7lVb76SkuIjzW1voRX
	 VoefUQQwvRu4F5924PqQeB6r+aD7b9k2Ut1qmsPxAgLElbLXmFSaIyC+cFeMrEuq+y
	 mpw9vIAOQCuGknCNWkSUCaMLAFjYA7JkPo9JESGWpam+u1g9dSfzSLdKf1OOMXcPG7
	 +KHV1ZfcEoFcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5B1C4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170205289637.17175.17223071174721204209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3c6e6ec0a066041fe36c84a2fff8364f2d49b9f4108db5fd4fb25feabf7a91
Date: Fri, 08 Dec 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702052896
