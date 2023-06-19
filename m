Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48750C2CC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7238C433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687217528;
	bh=Sif9CLWQhsVw95iUa8uPMJIZ+YJJJU07ClFWx7nvlAA=;
	h=To:Subject:From:Date:From;
	b=jemChwp1X4DWoKuC6vXW289cE1ovG+GwdjIk6BB250Gc8lspzHc1T6gZysuZsA/7S
	 zdXYA0xxvzRhV91VJnx3XMrF3PxDudVYZkn+XKXihlaVPBhXz8xamAb1Ejgh+W6X2F
	 t13vB+sHu4+nkvNIVJJqJIosoesg6f6ORGDTK7XH39hMNcD8PoDxAqreC8+kWF1yNK
	 NdxR2fQgqAdwf4844nz6Kwy4RSPy3TUuvFJxhZe4IeZoVHp9T92Bl7htG52aV3wKGf
	 xqqYfgylnWVZFXsLfLO3OCsKAWvDrJwecds5u4EcDHSH7qAGNsOG3nDwhVP3YLUn1u
	 TRQmE0tNEYF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CEDEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168721752866.5786.8117988690030576948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aebdf026e6c128a3c2a19108fcad746ba124b986d9a77a67daab21a762a513e4
Date: Mon, 19 Jun 2023 23:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687217528
