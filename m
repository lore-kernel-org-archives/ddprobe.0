Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08A31C32
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73403C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665301253;
	bh=Kj7asw6Zzr1pzReJYugkYDxMQ6ZlLrexz1Afa+YtdF0=;
	h=To:Subject:From:Date:From;
	b=gD90vIaMgpZdUBf289ZnOQ6YJ4giV7YFnXsnvg6bdSbhcyOLuwFhYH84/dQ2yss0Y
	 H7J0b/dPAgIm8+rmCus5PJqLcclfHDdM93EyMvPOIrzyTd77CFTSbhiUV4WzZMJspv
	 DG7lJAc8mSVQOpVU8+fxgK75is2txBHdzwgC/UUVQ0i/Cq5FiivmcebT05RttzN+eq
	 1+Woz8mMHiEoZsDv15qzZ5ZebUb/HPEZE2Vc4C5h8Z8WkOHSIsOyOvGmigsB+dhdEb
	 NSO2c98i5Ubu+WKlx51CVu4GtyUbPH0lIvsc16gysdtZo+LOiN2XgjoDtHtRwgy5Ks
	 XB1HtZp4lRCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59006C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166530125332.13622.11313299947597415712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bac5ed849d414af47108bccd35cd0548fd5175fb6e6c5fd363c37805e681e8d
Date: Sun, 09 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665301253
