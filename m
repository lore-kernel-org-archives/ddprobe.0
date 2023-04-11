Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE772F29
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 11:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DC1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 11:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681213325;
	bh=iIHE94Zu+/0vvrToc+m/0of4lOzwtcPUSGwibvtqFzo=;
	h=To:Subject:From:Date:From;
	b=UgfZflFtTBDp5YJGZy8xpr34pzqcE9mzLXtMdTgbf4X3nxNtlgN5vsFh6DGHPNOmH
	 hrVDpZNGn9UnmDbYiheP3VGLN2x8EnGTFt0C3P2VR7f8iyJmf10x+7x/dHs2u18vie
	 x0enX8FfzSIKlE/RUBM4R4qmLXKZLwGpOXsSj1csT8Kq7jmjsg/QGnFB+fcF9gxEv+
	 jVgbCzfodfhCHN8+I4rxAsK8McUlSPqgWQj1WzPz6so4nkVpR97Pe++Ye+liuCnMCZ
	 00z4GuHGcFsOgemUBr/8kQwmmfbKrf2iTo19iBhF/NUSVSoLRDFwgmGxeh8GsELdy3
	 C5O4l0+KQjKDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19B0C76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 11:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168121332572.30011.5179624407154040725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539e1a46aa9b52aa6688a943c5ec44f47346c273df3d87e4b495b381cea692c6
Date: Tue, 11 Apr 2023 11:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681213325
