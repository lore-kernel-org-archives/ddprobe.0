Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FA23C16
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A297C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674058887;
	bh=HJ1YcjUo+4MANJ8VaVnQ0sxqn7EoSVP4UVq/+FzdrnA=;
	h=To:Subject:From:Date:From;
	b=XuQ45c0Vvo5EWSure7i/4jB0UkaplT36ijoCqeUnoF8jW+Ai1tkPI23SLxYjhJkov
	 LdYp7aK9CcYEW8sNU91sxCtBpS2L+6ILx0piPwn9i6ZhhJ0GFGp+FlaJE/Xet6n3pu
	 I+o3Ik8PGuV2R6KiSE2kVsnxW9pZVJMjzrDv89+h6pnpc8IJmlmBQtx/4f1a7iqn2r
	 /a8eqiYwN/g6lkHNdY7w0wj0BBwrOUvY/jTYTok1Du6XfqQbOgCgo44axXoJ9WvvKf
	 XDVoyZqR552E4diyd7BC6gK2I7dhhGhPKV1BGB1Er0wWHTi7q8/VWih8D2avPS4JQn
	 7IHZxS8z8QrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FCFFC32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167405888738.2384.11152257915078493917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870d22878ba4aabf69849cfeb251bfafb1b8962c93d8af58e3d1488e9559cc92
Date: Wed, 18 Jan 2023 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674058887
