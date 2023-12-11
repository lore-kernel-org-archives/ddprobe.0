Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC02495EE
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amLPWBVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C161C433CA
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702306696;
	bh=M8gKTm3HV2b0NGV725H5zysYIXnDaX//HR6kHMr6TgE=;
	h=To:Subject:From:Date:From;
	b=amLPWBVsjfVWVAMYF4JiNPB4VqsPVCWfS5nxkTTcqs26YTEsr/MWQ/BGbJWMjF+Xd
	 m99MlyyX9njm2rfZ2gwm5wGPy3fdCUfe9Xlv4dWARES2ldXVHB/IVpTuqBXIM77ovq
	 I2aENwoB3UReo0QYFnamqxGMZzveF0xcaiuMb/3/bhLk/ujd+QVRGLD4DWQ/pGdeSy
	 Zjf+2ymIOIPDnxBMWgo6QXF1axTHCcQPTYIu6V4KuSD9gVufduOhmTdKeCFlfl7hJ4
	 SCEOulLy5Qdt1y3+4pWLliew4EGDdfGbgVBmR1X007OyvOk3BkDVRVnltmyJg6S15+
	 SmdQobeG/Ez2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6025AC4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170230669638.25900.10711556826708768790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdbbe1e99d4fec403e51c90e5d43a4022f57ab49a9b33b562a0c65e8938ec18
Date: Mon, 11 Dec 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702306696
