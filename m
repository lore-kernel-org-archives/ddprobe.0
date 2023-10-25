Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6CC27EF8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siagXuGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF1FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698259696;
	bh=pv/n+aJP36wcwixEVymEL7V7JGRlYnUH5rTQQabABmw=;
	h=To:Subject:From:Date:From;
	b=siagXuGodnkyxRoquSFrV2b/ZuHqy6XlEqbZjWgqMsTnaFUo9oL2AWiVRQY1XLJlU
	 +tsrSu6axxYO4G6o/r2vodVep9adEtqPujk0cMI/yH/tNP6oMP8tWO2pyRItZU/fW+
	 HN6Tupw6j/ESzURGQQhpSpPhIf81mQXs2YFlF8bDRL6Y+QI22clo+0qFfYBGkb78pc
	 C7/H+rHJHhBJ18/GXe2BFm0+dlgypyz+ydXACq6rqCqW8MiXqr3RB0D6YMqe2L+nCe
	 P/lDyvF13i0QSNEzI9/BDdl4/3f95Tgv6sAfgVnkS6zpwmWzl1ocXLTRUCu+1v7IVI
	 LkAxq+WElQrcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691AEC07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169825969642.11092.8005002583565858525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477d234fabe155186b338c9c62e5d99db3da7d5d092ee90f3a91555c15c858f0
Date: Wed, 25 Oct 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698259696
