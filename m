Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BE9101FE
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2SmjB/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CB76C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700300296;
	bh=wO15CH9vVCXAsVi1JWujg/XNHCs4xHop4aGMNEOOv+Q=;
	h=To:Subject:From:Date:From;
	b=l2SmjB/873s6s1Af55GfSOA+HC+2sBrYGyNm9ObpREknalspzp5nfIM7KTvQOw3ri
	 pdl7j++TbYVu53Fbsjz+fT5JZwA5ZSTRTN99DPfXPhf0w8/MAazem0UJLmAlHSrpgW
	 JDg4CNx4SyY79Zg9qs+Z8EIuIzxypuvQqZRLHoWEjFzwH2khXjXPXn3OA8f90idQrq
	 ZEo36ouNvLKmNuHH0QVALUqDEJ2jClpz+QVa8TXgHwu5mP0aCwBqbqWH5RoLtVIpvp
	 57eWHvcBq3oHNpQmUs/iUm6LJQ1Jrj0ryXIvPH3l0eI+7NeCwHlR3BMPvAXKyImgip
	 lH+L2a8Q+P5dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F766C54E76
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170030029644.20451.16446618774004072659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70326e842947147c77071f171914b601b00482104a15e12017a12908b6213eb
Date: Sat, 18 Nov 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700300296
