Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC47168BE
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 22:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB93BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 22:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689720068;
	bh=AzGM8kvG1OHdrhzKP/ilw3Avny9BSgBlqvN0x/Epn5Q=;
	h=To:Subject:From:Date:From;
	b=HlXiZHgmDZZ5+SyoGwZvITU2eGA6ThWV8X0JNBjmRlIh8BQ3IKW0WY694ndZf4AsD
	 qCfKMVegEYjx3XOC2DY8eILomQQqAlnEyyfwOO9bei9/KCyw4LkE0/ZQt23wAczJVz
	 puXyyCY8UZoKZHetCEP+FIlkp1u/5Y267sPW/J3z1ezCdBB6abHDjwKNKEVK1DWD9n
	 0gZY8digRK1vGQHw3TLHM4uQnF6ZSAEaDjskVf0RBxoA/Q4CXz84Gw5G9V9Rip3o/J
	 6i2QFKq1AfQfG9/cEUXs1wSCmkW5/UpaBaJ8I4pxOdLWKcuMoPx/wLeSyFjmkdklV5
	 7VX3MqGFTsq6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC51CEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 22:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168972006873.32753.14301331682368305702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d8430aed9948f8c7b6207bc10bb1c132e721ef5d77ecae6d13fb80a95d27b9
Date: Tue, 18 Jul 2023 22:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689720068
