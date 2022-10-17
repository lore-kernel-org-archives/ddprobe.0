Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7FAA52
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFD5C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665968453;
	bh=kAWXnK+XQbbi/lpO/zg8ngiqvgV91d+TFASd2ZqbPz0=;
	h=To:Subject:From:Date:From;
	b=C//X1yuxeEwtoRhs3imynOjfuJyv/nvIvridEYgo0Avz2LMbA2H1vu5Zz0GY8xowx
	 KAPSpK548y4CCXxtXeob6PplnpU5Fef25Qga4G9M8Nes4qWkWkt1fYfWw0RY+qXzw/
	 PLM83Mh+7SKz3kI7ZdZAd30ZLs4ti1f3IKySWazkx4ii5OGvHfA+YpJvwaip6uu8bL
	 aqEhw+09VxCUI8dgzjMpiH2my9blkT6a1cSGLhgzckVCjiI1m0Qy6DPUnvUHokC9Ix
	 sgudRtBxSWMEaVtsDU0kM9YGi+fjfLRc65PaJgtqK0nLM/ZUJ46k5QgtVelaQKHhUi
	 XtfIj0NQ/SPUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50484C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166596845332.12794.8677460379605550760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01328b474a50a6989c59a19ffffcce91df8284ffccae32235f2b6901a720808f
Date: Mon, 17 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665968453
