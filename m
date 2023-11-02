Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126392FB6
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K13xdakS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86825C433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698929296;
	bh=lPZgQpYCvNyhvxgn3NxMDrxhy5VO9x9pxwzj64TZZz8=;
	h=To:Subject:From:Date:From;
	b=K13xdakSELEgCqcdp/2yJwMwYlq3JreCShX9jxeo6r8AdHMFvtGwlAzu9U+7/ASut
	 HuQl2SiRlCzjLjEgUo7af5E91Qz/uIphHLCLXRou8R4jyOPeRLW8RBU3sSafSKcYs+
	 yIYGQ4AJESbjjOKLCd7rq6Lu+qevx0eneE8Ddja59WqkDn15Yz95/twe3J0UJS/XiL
	 ER4x86E3HY9XcFvMc9dyLvmmdpJH5RNRO1C6FVDWDyYXWRM+pFOog0C5F8xvSi5B/B
	 Zvm5Iy2OQRJUHKYauMS6ZEGiV8fWwOwZrRVCPFPYBwzNkg5u1Bx4f3aXSojNUdg6+6
	 skMVPP0an2CYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EF2C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169892929641.12068.12125035151338882033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b448ea48fb8a201b4afd2a7d87004561eb8ddbcd4108bce3a91022100773f6e
Date: Thu, 02 Nov 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698929296
