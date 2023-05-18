Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502F711C95
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 10:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA338C433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 10:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684406765;
	bh=nuPQxJ254C+zs7EQpFYYYZX8nLIJYeFpdHRSfeigL/A=;
	h=To:Subject:From:Date:From;
	b=iw/cv0Wm6t6/enYQsvzBwpJrzsTeTEWA25A0GeU42R4e7WHMYzs+HvdAnwM0I0S7A
	 Klxe8RWimSmmi9G9vqEHciXJYrX/W+dpuNd0qqy6q3B7WNnliQxQW2FKWkZSa3JXc3
	 ujN3xrpdJs7ZHPIa9pOMgkyCm1hRyyll21MTWA8q0Ted+XnDihPvzYdAW0N9t8KYyy
	 8p4m16zuF9/R01zo1ZxMntZuqjhaywdFvm/dLiXT9+NkXdJMyA7lr1n6knvLG16PTZ
	 BRp8blq5PFARlyJVLAVLKf7nZcQ5yopT8Ol+L3Wg3Rvfs8orL39dRqXf2p7uZw7VUL
	 MyUHO0LPtm71A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE9FC77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 10:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168440676577.15808.12324872282286001041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f30c39d59038caaa5bba9450005064ddedb5a32c413851407feebfa7684eb7
Date: Thu, 18 May 2023 10:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684406765
