Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDBA379
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 01:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBAEFC433C9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686794229;
	bh=D8glUyRQBiZK5ove6o8drfawzvmjjdKzcNL26xcXkQw=;
	h=To:Subject:From:Date:From;
	b=g8Mz7mZI1p3T0FDrNdEVxPQ47jXuMAVwwDnBCwQJ5Wtn9v1EqGRkW3/yqoYRWaWZd
	 R4uf6CQ6/hJ6hUlcWaLtCFOs7cmKy2X+DX9s09WJ7EP5+S5mv5RLZJqJVRbpszLt2v
	 mAMJ9759puLz9rX4Ol3bNR0Ne/ZIzMF+h+FjoGStd4FMDvfuen0kdLwI69TFBfpZYC
	 5Zo8/TsQTYcZiHwWFTY081GBz4NNFOiRBxtbJ2Z98nikp6zXk446aecNLX6wWEb70E
	 2jm6xtpTBwqf+yM0/TxpsalbGurxMYnKvkhQsLEx0Y81U7UMG/HzodfcG8ah0LgVOo
	 ENAmJ0NjvNEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB725EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168679422881.21748.4472215057115413046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038dd2a8818e26b9f0f9792c0fc4b0cc19cac4d2db922260a10381f27a25dafc
Date: Thu, 15 Jun 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686794228
