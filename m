Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A4A28FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 07:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C39C433C7
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 07:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696145168;
	bh=1zmmsX2V6ErnzebUmv7xBKWDthb/krsl3zL2HllEEn4=;
	h=To:Subject:From:Date:From;
	b=c1/HcTWaexQBVUIWAW6QH7WtFOHcM57VguJMkem0FVNKHFc1W0+TUpWz6xxapkGci
	 hbRBegxolxUNF4WGPVy+bHR4eUJP0jSNTONjsbaq+eab+nMHrxcTdwBXLsRJ0/+d0Z
	 SZau4IxaVmGlUkBmtrXSrxLOy/itj4yZz2R7fMbfojiCZwcgVasW4TlpJJHjAC8g8X
	 csskZV2hqJ6dMbMv5qLyFD8REt848wNsYa9lsZf67UIdf5bCe730To8Hs+Mm+EE4UH
	 fz33ZSbfp/K4a95DtGfVI+qjrIgHBjQsSKXKJf80Swzv7p3QKDvxTmFiX3kO6f7CaN
	 z5MhSzyLSthBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8814E748E9
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 07:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169614516874.13668.2847714074799224148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d9135ba5e41c562878d1b044ad50789e8aa21975b67b55d9634e344f1f73bd
Date: Sun, 01 Oct 2023 07:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696145168
