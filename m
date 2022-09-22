Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5323229
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 682C8C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663848053;
	bh=fMFgf7feLVDm9khN0ar74vYa26YrRujbNu13RKM3tsI=;
	h=To:Subject:From:Date:From;
	b=CW+N6fAV8vep7Y9exzok3LNSsFXmRrNhWGsq9o8wwGhWStke4ZdF1ZzQJRGFcwe7M
	 WN1ms8rcOxDAAhQZjvRqdLOZl8HP/WnteRE//rHXXGrYoWH6Ase33Fycpbd/rG9Ls4
	 Ol5AifX2flV90QGqibijc9L5eToHODDbLORDhGbmQWAG5drcnl3oydqfs0hZUe51Vj
	 5/16NIjXnMPHBW11Ro4U9wXOKoCQ6oo2lA5b4R4Y5Q+5RHovqoCIhQ/Pua/TdFrlJi
	 clwsCiZOh2m0BCfWc+WtKWdu3h4XK9QjGkwTj040uHQ85VRfquRpTztKjSPPJRDUBG
	 +cwHZt+xCN1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52872C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384805333.3497.13207963716640597742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d7a7a94991342f32f3a7f0ad7f5ba5daea364ab4f8321d444cb95a7b53f0cd
Date: Thu, 22 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663848053
