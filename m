Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C0BDF56
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKVpBkSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6B2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698602296;
	bh=zJDhT7exmvvHI9YiK+A+wMqjLoxmsExo9QrXyOgbgO4=;
	h=To:Subject:From:Date:From;
	b=iKVpBkSi/136F4PWD5QQQKJSVMnEishREu/plNBjLwO13TPW0B0RhKRx+c1/7SCyU
	 ZBsSfDf6Mlp4GPNFkwp56mKDAg/ZdZ9dPnph4Fu8aaZuE5D143zm4BpQGauFGOaQZu
	 4GOaR9K4qjFwQpnVh4V3jLjra5cIEYx+AIbcDTDSK0wTy1a4LU9vN0N+fgnCxQx1bc
	 YwkYogOobOelO60iL1QXrHxyIztGS1eHVjC8likfA194vBKqICh9dAMCmJRt6NRAIc
	 WhOqD84r37sOidt3DGlMi0mSAOxJX6wvnnRo+2kmYD5k0eZnUUM3ydedomjxvEceoi
	 XRR+wcvH5bFKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910FFC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169860229656.7597.1096672218103288268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbe645ac8a9449a92f45966afe4005c5876824dad5c97b642fde071626959d3
Date: Sun, 29 Oct 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698602296
