Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC063539F
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A05C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662550253;
	bh=SmiVaBkMjQFbbFTTepUxtAX0UCKWQpy1WH2zw0SNRRY=;
	h=To:Subject:From:Date:From;
	b=X6dspPeYryJ3j4qyUMIL2/yD+gNEXuw/mNPP0H7qekeAPqjz7KqU0rTKtz683500A
	 td8mHtZ0XNNar5qmGarrfczR5HUsm/GWg+yAXpnbFvacsqILWkzTidsRgqh/sSGPx3
	 RmBIWr3JGN0w3MLHig6O4UxwMZhoqOUP+bW9BAT6xqkxeR5eVUb6uHyB+CG3vVUdrO
	 o+9AOmgh/p9/Oh9WpoquWQ5ouVxvGgt4c/ugBF2EYIBS3+gosBc2yOXKrist+/OvFn
	 EYg5gmj7lQHRJFsOEaCMZUnLOvIPPn1T9E/8m5g8OvRWbiRheCKKg9/G2U58w6/BrL
	 G5Z8co+cgis0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59581C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255025335.29784.17732360425996144258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced7500b7508bbcfd8ce497c54ea112a8a3395520d80ec9b55ec4e1eedb25acd
Date: Wed, 07 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662550253
