Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F05A50
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvFG9a4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7255AC433CB
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702427296;
	bh=l3uyv2ZF0L8gykKKhAFsmleHhU7NJXE6amKB8ftSd3I=;
	h=To:Subject:From:Date:From;
	b=jvFG9a4/uEZEiN9hxMayWv9MxnE9/c5/GhD/+GgcMqqW5iLtzE7mDLibzKjLHq8vE
	 PSKvJ7UkLJXrCwPx7CLQV0gZ00XpqlRZKdeb5Puc+wrCbu0YQbntleuJXnshokGbAu
	 BIAXh0cCcLhwSOg1ic9NBfaqSqPBdD9hHgCYJjGPLRizEf96mTwZ/soKwDnfMnf6TX
	 9UH4sOtxAGKCIxPXQjIw/ZjKZIyOZFcHr466aH4uUZ5tK4h//n2VzISyjca84NCd3b
	 b1u4HvegUppt0AfVTSJlnGS9eiSN8d7v76XYPUgFF2llQnNuMdKaFQT0Di2sYoFHMa
	 fMNm/Z4HXbTYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B99EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170242729636.9395.3047674844660469230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf0497cef00dfcf4afc48c8657bddc6696848c3bffd82906ededd88f3918987
Date: Wed, 13 Dec 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702427296
