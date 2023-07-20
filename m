Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D52631
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0506C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689817328;
	bh=VMRpzxslnMsLcUVuLVjfqKOZfbflIFzy4gdWDB0azHM=;
	h=To:Subject:From:Date:From;
	b=fZGAnCdiFlP3wthDF6jq+ujzZ/5sZ7OZMmNA754ncA61lTrkwqdbPs+cHkhfH5sRu
	 qNDCCOc4E4oDvK+3in0Mz7R0zcwB3cOpvZxbQnyhy6t0LMmoLvL2GVo6Snut+w7vk2
	 oZlXPOZLQRR5Qb4jHQDY00g75OAd5qwgoiZLwCtR6XMsyCzrPr0DG5RIDdILZB9C8H
	 7VkemZK+mdrubzZ1oGn2FdP5xr65L+UBD/lJoJNm4z1rlnthYGXs6HpF3rf7yzh/jv
	 J4RMiOAbrbrXsjCnbIet7Y0IsaHDu0sffMa/6EgEtAx4e1vDf2RaxDLdOSTUXgmjlf
	 4mvGucpHvAzbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A685CC001B0
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168981732867.31010.4383289698999052550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6bc4b48cecd04e4c776fcc6d69c473771adc20bded7efcb051bd996f7117aa
Date: Thu, 20 Jul 2023 01:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689817328
