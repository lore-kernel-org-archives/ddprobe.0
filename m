Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389D91FDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 11:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D250BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 11:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677842765;
	bh=oGmiVb/U1JiB/fsvEr7lZszFS6VDKZF6fXlL7yPkn/U=;
	h=To:Subject:From:Date:From;
	b=eWNV5QMSKLA49LKdAyN84lrqRvdsFP5VB2JI6K8b5UT1Ygo7H3DZiH3I7yNE/kFi7
	 aRm1Pgoh9lusBk3LiX29g55lGyBTn38PWNBb7qpQHW+gEVD51HWtIyBOQFjcl7g6Gh
	 iOmiQqSdBIh93UIk3ydzxbQR1UweWpvZUj8Xvt4JxtfvVHk6DeTU1kmOkpWV7OSoiI
	 7KdhnwbJ+iYb1tIHdelJZTJ/UaTA5c6wQrkDl3MDvY5mZHYtGiJ2pHIX4fz56YwL1d
	 njpx7jqBlp1voNynJpEXOnFDof+NnhLj0Y7EtlJr5j/65hXT3lipmBSyZPqIE00wBL
	 qmcLpWcwsuhBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F51C678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 11:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167784276573.5469.3314668406662687824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d06f89a595b3e26f161a5277e88537925a2111fdfb0b4a152d3ab5794d2f4a
Date: Fri, 03 Mar 2023 11:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677842765
