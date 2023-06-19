Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E2012B86
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 15:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E37D0C433C9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 15:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687188128;
	bh=DhU/pQIC3OXj+3MA0yLa+meJwd7GW4lhUSjNbciDJwQ=;
	h=To:Subject:From:Date:From;
	b=mFsiPN5y40MCA4HS03mspaTiQetsHUp35FiQZjFHDSeSbxHdaHpLh7cebwx0bOc+e
	 5mEszZHwDqqp790PdoyA9nP2sWqnOLFpXFlcrdm/KQe8yRPO2aztaM2LSsNf4ykc4g
	 HeSn5wyH1dcuChSI6R+6/GRPUir01bcoa37PGQXt/3sMgK2+rjFVZSxUZFPdHZUC4K
	 B36Rr5OS25Bb49MDHV7n2z1NOjf85mkwiNelI60W7q4cDj1knTt/zOGvjj6odtT2oM
	 bnKAN3KejKdgf5wXAcEBC4psiCRo5yjezMKguMbpavefYiat1BaH6IGqyJROLERJZV
	 Vb9G7Tka8FyOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A8DEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 15:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168718812879.9044.18236940938333620951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765c3368ca5d7553ec3b0e45c13243df1d17fbd856bd23ae4a50cea360eab7e8
Date: Mon, 19 Jun 2023 15:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687188128
