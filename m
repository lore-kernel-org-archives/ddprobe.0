Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D3828E3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81926C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671102087;
	bh=Rw4jC6DuYs/QLEZ6n/rFzGYjz03dBwm0qTn5f4lbZMM=;
	h=To:Subject:From:Date:From;
	b=AUSafzvlR2QsJj0CBq1K9QfMFsV6J0uG7/BIc/BeJh1RlpCpetcvvX/YCQX0UZpHl
	 2Pu4wzlpjwyrBKQCnboAsoZ9HtG3ZX8uTNJB0boG2ibbS4qC/9ga6b1eK2kl9oWlhd
	 8L6F4sl2SV0uaKayF1O4nOwIlPWdNp60S2e0hGCYV1Jdns3joKKKdqRU/AnUbTqfSc
	 Oki6yx85TDc2opdE0EoQ+s0uZ/KCnQLQ3l8eS5vCziHxy3bAU4cSyjzWa9MgcwyP/R
	 hEot+IS5FjQ5JS8MhYganF816W0l8rm68FHDgkmqbYED5mpGXu7V9InF9JvxyYy1qI
	 cXnMT5+R12bBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64665C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167110208740.31196.2991424758080478714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823941cccfefae9284f217353ef40dc5ff77ba09962097c65347587cbfb3c8dc
Date: Thu, 15 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671102087
