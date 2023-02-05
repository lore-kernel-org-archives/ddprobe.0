Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EC328ED
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 12:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B64C433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 12:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675601165;
	bh=aHSoqEFn5d7m/o1TUq41DtUa6MS0zJ3ipAlfQiPK8Ns=;
	h=To:Subject:From:Date:From;
	b=H4WHJOEmAk1nlj/MVuZu1AwkLES+LMJmUr7EhItozaue7cXMsm3kcq4FpW2RceFvu
	 62exrhiwMs9K1UdW5dkUYflXRXB7L6u8DsKVJCsW2aittPt6VmDiJpuyqMvfSKZ95B
	 zYaXw7OzgoDePIXTGqtTV7cQA/tcgygeNFqDFY5mvWlPWhuO1UxEn2OGVTF9OEZ1g0
	 D99WehrPPXIj8KVqI3Xs0M/hJ5urmbdt/zVmAG6HW0WsgjZfrGYow+qtWqp4cRf8Mn
	 g6lEr+gxnMo8Sl9C1g4ERfywpw3GSme0loHuMruMsXWs/JbY33mHKhAaUN0g66e6sa
	 XTZfilZgRavLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C5CC636CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 12:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167560116572.24594.17029254276055358044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f544daa9fe667f1ce63624622ed8e25c4d793b5d59fce8067de6093b4d41c9e
Date: Sun, 05 Feb 2023 12:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675601165
