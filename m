Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7603201
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9770EC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672350687;
	bh=QjjbYxhVeDpDlMelIvZZ9pMThXFBAV0DtnifZZO5we0=;
	h=To:Subject:From:Date:From;
	b=joKxTN+HgvsoATZMCDtec0dcVdYRnAHLVTy4g6WdeMOM97vUeECbfRnJc6Cy4NWFh
	 QFbOKm6TyZ2yNtizrmM5BsFwiHDUMtcQBd2l3A+IaazGGUeffwed2/R41rrJsy/ao6
	 H4ym5rjTkXFh92Udi+ADAH44WGvw8+1UpkzIxHUA4qvGtk7vPLrABXl2HqrmhX3oGH
	 IIogRLBe5eeQL7ozSkPHbeAcpjNbLO8p7Zi9OzaN2PVS7kc1dl9NrSPnUlD8IZhpUV
	 HoD9G+BDf56WytlgHjCLX+jRA5xePDL3pLuQOTun7jeP2f/vYO1ZG6DlYpbbcsNt6A
	 wv11ZL2rLpUdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CA5FC3DA7A
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167235068748.20680.7049950931071719688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff105ac94158800f987a28c89023e050606c981353927ca21b2f159574be86b
Date: Thu, 29 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672350687
