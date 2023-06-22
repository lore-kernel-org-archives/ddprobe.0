Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3203AA8C
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 09:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4437C433D9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687427588;
	bh=K1A/6yYBZ5zt6EC/gxdex85J/Clzuxqn72hmJtKpTp4=;
	h=To:Subject:From:Date:From;
	b=e7GsNQsY0poc7nwWrmRINZo46TN3BIMtEeTxzKh1w7Ku4EzpiscSFLu0ItY7w+o9k
	 e6JDrorbvEWM2qiTaXj73TI98dRiLfrif3ROw76aNMAePD37kF6x5GTaCpY/eunFFx
	 WcUX13iVSVLJ38SbmdNv4KW+/L/buCol32kucxGnTe4ubzK/zF+ust2y65+ko1W4pG
	 Odp/eDhI8yaTbxT87lYkkJ/6nvNtBg7ZoX1+VCjuUIosSrQcNjPzddmBGd0cxHJyKl
	 sBQibPvJ8AKobXAhUpsX5CAOWT+TMID+7jjekxJ5CfLditgL/BWDCOYnvVfhwCeKXV
	 KUkJTO+rY+dWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69E3EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168742758867.11938.6875172028607107242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cfd912a8db77f111d40d4e6bd75008e4d4d0201c58c49dc839766b57663d19
Date: Thu, 22 Jun 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687427588
