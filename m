Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843068820
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 07:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlXxTR/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DA4C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 07:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696751228;
	bh=mgV56cAhpoRALNzrtmgqOa9GX9SVB4485S2si3kJtoM=;
	h=To:Subject:From:Date:From;
	b=AlXxTR/qt/t6v2N5sxgzLk5R2zST0hgtpPmlV6G/fsTqWGUQGi003X1yjVAhtF3B4
	 lcIpILX4o4osw2YfonNeR8r//UOf+AvIm2etJcBLPnQi7pJt/8yX8YNd27XbX5H3qB
	 FfDnd19ftAXnZ1pGEzsMcFYv3rG0tOx5B2K6pLPcfnZMQ9yTSO0j+jIxneky3bbdPl
	 rLfNPbhn1zWmx3EUAqPvZjy6Gm2ruiY0qYV45gxTKd6EKll5dLskwZG/B3GP6eCbVW
	 uoxz2rLGqfFDC8uWJyjUB6ICsq3Atm6th6mZ43Dy/JV7Oy9S+IySM8D+ZGi2kbRTOI
	 2u0QYK9gaQEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBE0E95A82
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 07:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169675122876.29639.5095657904960596579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd591b9a8a844cbb7af365802b04aaeca3509b32fcbab9d59ef698b3554e08ff
Date: Sun, 08 Oct 2023 07:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696751228
