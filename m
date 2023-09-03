Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5999D3D6A
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 23:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C963FC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 23:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693784648;
	bh=Vpe8mqdpXvid53IuMp7byWJ1Xyz1ViOfOw0aXSVPbbM=;
	h=To:Subject:From:Date:From;
	b=rrv2rtnm3w9NcGqx+nmYuaGzL1NZ+fGDekIz7gK7Jsg9PzIb84OcpBcgE2YmhB6SA
	 5T47SecjkavsWvibHKyeINjo7ZpXbnQr4oMFn+HWgeuHmUyKMYtt1W4+34Ckmr81tT
	 eNUoz18e48rmv/NlOozPiBgGHXxV2f5zaUy0AJxu+EK39SxXjl2e0zbT7THrMiedKz
	 WZv82Qwfql7+UEtIVrTE+oBT8QS+hxGLKuxLDvG3ekl+8WBWatGFD3oO0rhMoHMhyt
	 5eMvetxRf6rIHZGiey+vjalUhDpTNsM9V9preP3XMASlFSPxlZAVsHcdkVCyC6QBdW
	 /6L+N11Z6SKxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0248C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 23:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169378464871.10062.4854446610939964525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79105aff6105424d304407568902a358fef5efb5d5697acdf05d28e8cc78571b
Date: Sun, 03 Sep 2023 23:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693784648
