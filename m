Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3971C2BF
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 17:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E414CC433C9
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 17:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696439168;
	bh=mstJ1OJvzO1MyFdxs9NEC4APTp0BMDEumc/ibBhM5IU=;
	h=To:Subject:From:Date:From;
	b=GG/U5H8O0y9I5IK6AVkwAxX87BjLnFSpvweqMDieg2Y2mDJI73YXLthncriq+FNuO
	 jjF50bfU8L0JquB6JzI8AjtI8Jl6Zw7ajYhNep/pguiEXYsudUj2/xjwDb1FcTAfaK
	 J3zmnslE6TEYLaUGyAflwJQDJNUOJH77/xnqBzUogmhSFmwCiL9FW4WW4XfGNwCnjx
	 iaHk7h3bUoAFDoREG91xDKeVOKpgsAjelWZR1NbbnWJ+dnN5bORiVZMnhE+tSYlICF
	 ktrBzFhh9eDd/qd0itf/7tchZosWvlUmJnlc76i1wCUVnnFRmkXytNON0Nje8B4uHd
	 3QDII0fYY/mOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C805BE7C4E5
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 17:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169643916881.17196.9487497001578001099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a5b8e448b5ca1fdf3b4e9a2465bb1853cb3bdbdc56cc7d2230ae8e9cf09959
Date: Wed, 04 Oct 2023 17:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696439168
