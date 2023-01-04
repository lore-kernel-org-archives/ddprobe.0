Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA77E7F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E400C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672797087;
	bh=uQO73iepLuJIQMCF8J8RTlgvZ1TZ7mSgxsEtuQfKRJI=;
	h=To:Subject:From:Date:From;
	b=qpRGRKELwYsCsLTUISd/ygsyKLJyTqo4tNhh1GXNw578DFZiPEW8Nys3b+dhU2smt
	 DFfjnijq1L2+TbnQiEVHkF0+Mxbi7jWZhKzz2ntmGa6kb4tjhYm8TJyM8QtTwmShYf
	 RI6+ZLVZY0Phkt4C8u5xUxPcAjtoWE7enLLorBpuhOagONWWKia0l91zzAz/LeGe/L
	 A+I4CRkKQwUfgUTLzvkjCmAFs+DxWPMwjVEMlC0tkN/ecu2zsWbnOY2mp1eqo6Ya7d
	 lIeLcxy3cwhvxozdp3YfjnM6k8NiijODLfFgRce96wgz/yD7HBG6l9rxECyaSW7s0W
	 zEn2ojfohP8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6292AC4708E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279708739.16839.3168172096069337249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a711d87b47fafed7aff87fd2877c166fe517f36406f01c0404b71b41f722dedd
Date: Wed, 04 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672797087
