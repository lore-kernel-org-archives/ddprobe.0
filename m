Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718C21CF8A
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIJdVRYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D99C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696607828;
	bh=pwUvdNTL1VPhsZ/NeMbDs5T4wrZV+XIo27bJQJ3XsKQ=;
	h=To:Subject:From:Date:From;
	b=BIJdVRYbpz6/Sx+E+89Qp2Ilqfx7QacM5bAiYXT5ig2mqJ8xGvuMRoyTFaKdZjEKU
	 9w8ZzSSPq69XT/lCEgbQiQr8wcrCTipmHHQ1+Q+cr8DsPvzPZkF1Ijyg5k43KZzAzC
	 HevGnZms/LYOH5SM9IkUVo/c36lyRJWLxA5D9yxMYh9z5V5pZEY5b2sDqVYVgHXshb
	 JAfHeYkQi1xAxfvQ6/NUX6/XXgbQan961OqfV6qkKncFKWt7Ys9cDvBfxp/6Izqfu8
	 tp7Aylz8uU+Yb0OdJbQe4phnkUKmI4uzM/+TYFTHlNpbc+3xvhNDe+HbxP5QfpSVYt
	 WpHJgRPjeHPyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B484AE81E13
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169660782872.30277.13666128296628482619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288e8a9bbe3de467c683947ce58f732aefa86051da13315144e2e43e74636421
Date: Fri, 06 Oct 2023 15:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696607828
