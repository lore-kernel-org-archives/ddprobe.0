Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4297C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7223FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661660452;
	bh=tryTHCKEc5rY4NOFSBYv8GOZp0OAlVbIcd1nZt279wU=;
	h=To:Subject:From:Date:From;
	b=pIWAO+H4DVlAKIn3I9aleowFBcJfrLPRp+z+nSp5yCbi02UKAETi9zleCYH9CUhv1
	 8yF1Y7ugkq7+8vZpC/cUfjDLAF7pmPXnSlHUGeUbpm5QdM32HVp6oHjkIv9nuNwVH3
	 l9BLtDRq/07XQFiOPQ0QrCcB9Uaq6J0lSQg9AbdxIJUJqsxMm5m45bpBXA50vav5D7
	 fBS2FK7anPRcu8+PxB+tp2vgdEF4V1LGrg5pHcuLTaLqg1ZundHc4bo8H3gH4WUiSE
	 2TnN2HbrqfW+pmOEESeAhb7AmVtvG+pGArxQHwGyAhCBq2EglweKYrIz5OFeBxr3Fa
	 30b8agwO3R5Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E21ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166045232.20910.15822220428659906455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a59afc8f5e98502b415b52287a6455e4ec80bfeae60f6c833509532eb2eeb37
Date: Sun, 28 Aug 2022 04:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661660452
