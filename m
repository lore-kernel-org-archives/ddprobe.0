Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33EC1857
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C2CEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670753487;
	bh=p91Fyr6sfKpWOe+VaBQyENnp+7GCP6IVli5W4ZlZhcQ=;
	h=To:Subject:From:Date:From;
	b=rzlhWuteLUTflNaNaXAaKk4MJK136b7H6Y64HBEpLPyVZYCFNBZXu0Uj4CDfzAzTO
	 lC3yBdfjoOlnPnsm6SCsX1MdZh2qXeA238nFmgsu1jYZudgIUQyIQs3i+5xsJrcYKG
	 mFfM728W7VJndAjz4fAKFY9ISMP78aP9AzpiZKwDJEIm99gZGZngdvDthRI+K6kKGo
	 zcZHbDMuVoWUnMRbQKsc/LoUCSRmCl6DVsuCvNxX4OldllSwgARlcd9zpibolh8a+9
	 CkkoAMVcRkeWP/gTxr0ZVOMKKz0AU0ASdxsDwbjY1c90gfznaCB+dqpNBdF8eDRNJ5
	 qvfooY1FiNFQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7155AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075348741.14648.5320867303877121880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d2de1fe7a7b82f8cf44a281d66774b1d9e4d1ec0fec51122830056e062d3e9
Date: Sun, 11 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670753487
