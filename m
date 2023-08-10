Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C346A4D
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 04:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0086C433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691640188;
	bh=oVXiP0XpkzsBeVCSwo+WBlJ86rdx3laeI0gwN4PBbNc=;
	h=To:Subject:From:Date:From;
	b=HA8zGVtEjFqNsvvfBSsMHCiC6/UdywI35WFhhF8ZzFKTh+87Ve40nDCjGJNEAKz5P
	 QdBK/MUvNNYtSUTJcjWkNYuNQ9n6htAC2msP7unrJrSrbXQwxRkSeRn8BU5x6Ot2XF
	 JLsr4O8rgK8zuN5hrs6Iw6JpvA+w0WWVKYMakvMK4sOA3Tfu9GGxH4CgxX2BEBLrBH
	 ZDwigh89m3cTWwWRg6yrANBFORiDZEIseRsMn3pXqC3d/gNu3kaPaK7MPXRSZ5e5YO
	 gFw6tMEsd8LCd6TY2cjYoxAUz1walJN+sljSRAMrhRcb40lQUNaWznJIEEjSM0US53
	 vXPt5Nx9y1hwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35ECC001B0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169164018872.16995.10664413911542663685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcaab38ec810080958405574e5b304057ca9dc0be014e37299afa264558348a2
Date: Thu, 10 Aug 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691640188
