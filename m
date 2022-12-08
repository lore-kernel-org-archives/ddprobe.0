Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90D833CA
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66781C433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670517054;
	bh=/TMFgOs9HghfrByYhWq3s8h6H5bHYavpQxbmK3C2z+4=;
	h=To:Subject:From:Date:From;
	b=PXXWg4J/nIh3kE7woOvHDj6XTHCdt2N14Rq4+IPHB6BK+fI5Fj5BYfIf+sxzTHMUp
	 FxecKg6cF3ATKOgytFDviESQQvYeyWkklPuGEA5aJflLs5oXPX1hIp5gm0KW5cmXR7
	 qCc4DcbPOb+sHLi/XNS7nHlkR/tuyaDC7Ds2fnBfxSRJ7nzWANNp857DnaWrk2kNbo
	 f//0WKP6tjxWsLigoEP/tK8QMSh1pogxk4/7kCPZsGbbIV0/zUv9wCl9pThQmh1oJR
	 +zBy5+8gzloggddZ6zLTjnhW37TreC86NQeFnJknu4w7SQSeafHhZBdC44K4W/k8XE
	 GjO7uZ6MBE6+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50878C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051705432.18495.17228470386251309123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04b047db3a8daee8613b5b0dec76668ac644758a65831bbe2e892ef26d4a053
Date: Thu, 08 Dec 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670517054
