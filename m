Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8AB7E0
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA44DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679357225;
	bh=XLb6rkXWPfV92G9ZEXJJF3PJDl9DhHPtj2Y0H45bOuo=;
	h=To:Subject:From:Date:From;
	b=C2QPgH2LBuQK5r3UGKDJnNX0zkqJpfAkf5ZCFKgPlwXrC+sVivZsf6axVBBEZmknc
	 o3w98OXULccH6Vj/Pu8fBxQFxhG/SVu3n7pBxDYzSXvtELwW5CjJo705ieIO7rmzf7
	 RcHxvRqYyOOD5LO/nzC9K2S18zixE1TnBnLNfXvCU7SDVNApDmt8zFJnZHomfWl7eJ
	 AP8lu2/yJHxFl9gn3pYwkGtBYFlAAG5fH28jIqlGUNJbf2bYzsO9fki2YkgDxUpZux
	 IfzeR98m9MC5vNsk9d5zrH5fmgQfv+79WicCsDKykCVHqd5KQYqYKcMNA1DyYGLfvL
	 FRVllyshwUtSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2F3C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167935722576.14138.10289428094271351051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ae47f52211dffcbe659b2b95898337518452ca481b05227f97700fa54c29ae
Date: Tue, 21 Mar 2023 00:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679357225
