Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72998174FF
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 23:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4902C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 23:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692402248;
	bh=rgGnuIUHWhaG+3s0IB9tQ7grU3gzr6j3D+Fbe198wzs=;
	h=To:Subject:From:Date:From;
	b=mcnFuomjAVbnAZVyQiJrnPrubjFl9l5ByouwKRXr2LuAD34nvwOwrFXDV+4LwSZjt
	 +3sdlZE3qZHxxqAok3j5da3Jct4UJcjTvtNK/AvKYxBQx317/CNOGHnb3AedNuux+s
	 kE/z6fn5/Nt27RGMmz0mHvSDyFaG39MaDztTqnCytHSNSbZbWioLVtmzjQGuy1/RII
	 mUyNkOSr6Hbby5Oaimx+0AKKxEsJLmCaCFbqmLRM+6WLvwraqBGBTDGUHxL2Cei/gk
	 gC96L2cC/yI4jjXrCM/js3CSecoaMsZqPsXPPmo2N2a+de0jzH14tX9yCI5XmpLhfq
	 ZauDYLA3qtCOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B099CEE499B
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 23:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169240224869.14651.12964762410671256772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8025ef03ef4a41c6a856b0819810e5a992f882c53b4ad7bf7b1ed99ab01cf8d4
Date: Fri, 18 Aug 2023 23:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692402248
