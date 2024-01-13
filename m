Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278092CA6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKCyJdvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CCEEC433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705176496;
	bh=REBOyv89NLJHGZRP3MEAkdzmJDv8E0t1ZvoSu8gUn9c=;
	h=To:Subject:From:Date:From;
	b=fKCyJdvlSXxF8Hz+QkLPh76BHRZd7wasxexcepI+Lkfn/r35yXIv0L9cRdeyGEFyv
	 +E1bIjxDgIHMg+MeEAXKflBqn+4r5HkHtAkJEL9vDZbh5EP+KJfe3VSgf+HyJgHL7X
	 X0Nf2Ku0Z6ogM/MgbUtctVCwvh2KK/P8K8qRbGV4GPRmwVrzU076rUGKJllJ7p2+J+
	 j13m3RGuZWwtQF/I4ckZOfcGgxb2KG9nwXSTSHNu4rzJ3cDYmeVP3rN1+dGRDCQpGD
	 ggGfoPpwaYsbh/QNJjrA6Earv1bH4SlQ2Hia3wdEdBuU4pDOnB9Bz4kuoI8R3KD8yV
	 kZkl/dp5vo+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECE9C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170517649641.32304.11668663115716608037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bc316a280a0b8e0af8bdf93a88ec21f1d7d8e67c2fa854684765492445048a
Date: Sat, 13 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705176496
