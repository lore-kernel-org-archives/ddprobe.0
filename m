Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF95B1850
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 15:40:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70054C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668354055;
	bh=zXclNctfgPO0xDQLkfRKyq+uLtusOJTcFzw6t2v6JUY=;
	h=To:Subject:From:Date:From;
	b=hAZNLENDhb494FmURWfoWG8eVGAr+NeLediGHoFqucS9FNH4pirdlpF0lZSiifUGI
	 WzeztabnSNSs5PFRZMhUr/wb0XOaYCb9PjvyEBKevyZYhCoyVZM+DJLajtlPm3rrGa
	 a2GJhkp37uTR1zmlEfWZtYSv1n83PuLycwKvpUS3kWYpn1itvM9GTxVP8hTuwZDenc
	 RpzajZk95OarL7tDn/aBC8dcbGqzOsVTQDahiYyxCVwg7ia0jQJILElLIYeZzliJOG
	 GDBEV8uNH1G5vIz1w9n2TFmGhB+x7CAoya5Pcov4yDkTzrwxCFxXOpRT/DzqbFL2rM
	 5WPsnAfAxUMIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B54C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166835405432.30099.14884975104869722157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3420c68ea952e92bd1e6d9c55b8cfdebdc5fb3a9ba97fa7f779ffc8a6c0209f
Date: Sun, 13 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668354054
