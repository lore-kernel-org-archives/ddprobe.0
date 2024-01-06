Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB9C4402
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3yE1Wbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D278C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704527296;
	bh=jBTrWsUtDML6NvGJ30qeaVyDfFfJh7NeR6XYJJYVpds=;
	h=To:Subject:From:Date:From;
	b=T3yE1WbpM0Bh0lPSySBHUfklfojhei9LyxW0WvZRH+yR+s3vbG6/i+SKSudUbFOj5
	 vCAvTwdIVGX2cIBHf8riPSmUTD9TGLGnbZNBh+EtHsWD3q93FhUgDXCSR4+yjWsaUe
	 9eyIEZVr2SmL5Q9bh7JyYWIxtZ0Ha46So/vrs921lnw5is2hNOHYtxpZ4ThXfQhF0/
	 03QEUDyx1aydTsoi3aJ+GqZmfteRnWXIpHjXiu611vgOR8I+eKL+vRx1FHbP+c/ibE
	 naWIMXCHWDgd8seXpMN+2B8bUwAzAb92ZcsfrwEDpuANvKdp0gOTq5+JY/prdU4Pwl
	 fPkuwfAgyt3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D167C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170452729646.20080.8222717196756212488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64dfc36363ffb836dfbae8988713c435d4824283ee0aaea0480dcabd4726181
Date: Sat, 06 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704527296
