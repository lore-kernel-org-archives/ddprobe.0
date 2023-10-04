Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1411C1C291
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 18:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKIh79yR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A01C433C7
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 18:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696444568;
	bh=KJao5UKS8adUFXdme0ef8Y1U7J9d5hI+b/UMDitvXIc=;
	h=To:Subject:From:Date:From;
	b=JKIh79yRBQ1lrcs3bEXWkRgYpyGE/J/6iw+j9aW8k7Smx/3J6Xf2Qhd5k/78RTubs
	 0j7uzFVTEloZggkrUyetjBqrIbpzuAnZZl7Wwm+YnEP+6Wtw93Hvdz3spPw1dX5mvZ
	 j69usE2uqx8qSpQ6ud1vn4WzqIXJ6ag5IVXoaBxRCzqsrIEjIBcEDhfEVjBMAXUECv
	 JojOE5g9vbI0tC/tKVs86N5J4F43VLFR/hxzgfct0PeaxyCeLga5svAxuRd/P3SWUs
	 ffhZP1MEmAUdCZRfjxe1WztePNmRs9yLsoSCSjwv1hFbFhkDlgQt4urGWwgkuo2Uh2
	 n18FsOy81bnmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34CBE7C4EC
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 18:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169644456871.8524.2393659720099796059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81cafea0319b42b98b326dde3fc65fa8e02c40ee2292675f4ba5428705c57b7f
Date: Wed, 04 Oct 2023 18:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696444568
