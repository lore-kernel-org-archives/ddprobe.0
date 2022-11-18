Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFD57C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796C6C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668759654;
	bh=NVSj85Vi6fJ7JoR7xIuVpp7n7+ntDOvRF37o2XohdbU=;
	h=To:Subject:From:Date:From;
	b=eANRRNfZLjQjZDKgfXQ3yJenbHo5aJzPOaeozLjtky3Ub4/mtYhmttYPiY8jmiqba
	 aQMUIR2PxVjTCpaUhmjrOOIUv80FSNRfFv2D7daNPKD/aSO6UeFhw9qzZAtAa+sltD
	 cO0awUAF4pUAU8bXmgC2b6yh7F9NqMy6Sd9tN3LF/vkgNZhC5BZDxzjn2AZV1yPG4G
	 gp+B9XP1fgbQDrpHf5uUd4wRZYWeBVcNKRkkC32BZ6rWXMC+VviJ6j0F1hHTAzai8B
	 adMVul6Zqoh+GlNHoXW9dgmTZBIJ9Cz/WeHt6cawlxN72BLBbmCDnoNEg5XGN++Jtj
	 uiikQkrnI3pIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 578B7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875965435.19769.14213405929037739465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6795177206c08fb15a4009138896191a5a02f2685b743f2c953d139556f2571d
Date: Fri, 18 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668759654
