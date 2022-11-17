Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81238C10
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3F5C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668714654;
	bh=R8nuTu9WJbK2XE7qe/wfrhhrp/OZj46nKV+nqsADFpc=;
	h=To:Subject:From:Date:From;
	b=pzjG7Se0vsBriMFmTZDmfDb/Rr0jKAXsP++fI77zL5UzfGDr3/fZzwN9hsw+eLNli
	 vTQ8sKGfahyAnPpycOIRnQUulBYK7y6NA63c0JR1ocsTdQiTfeIngspkLmEJzhbUV5
	 blfIXQZ3AO+PiAvuAbZ/zlLaZ/1bO5GUC1JS8STf2qv8qssLI/vfjxpumwBQsSEs3q
	 oQe31a0RQc61c86wuxZ7ZxKIRsx3Gsy4eX9ydsdKIIKfn8BZew8RTLYJ7byOXABv+/
	 /9jFXsGR4iLnzERX1wp5N4D64bXHg7IYQ8Toxr2KAp0/c77DWnlL7QjRm7D1gnreH4
	 c4EUigtTthHZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AB6C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871465433.31532.9396126399869840083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c110bc323f9012e664862211c8bea45696371c7c39f3de76cd4bfdbc6ff975
Date: Thu, 17 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668714654
