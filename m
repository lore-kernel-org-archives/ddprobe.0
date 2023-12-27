Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9C544C69
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9qlpJGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B10EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703680696;
	bh=mKLCf60V4EDETAma+dRoywmIp17+EZoPWI/AOh9xQpw=;
	h=To:Subject:From:Date:From;
	b=Q9qlpJGUnn+lKyOYb7i9zMN6/szG2LQSthQFeJ7uWrvMzeGe/JIBIZq9pRwfan6Zj
	 KzSC2gM3v14ZJE7/viEj1fE4kjNQRUHZKegcdceRkFSPguVkyshuG5OA/jTQ+/fpA2
	 AFW40ZzUAgToUIuHmv2pTT5glevRg2k1IjnHIcGZ2I7x5EVLm4TkgYNVr4r0iCO3KI
	 aanxtCpd83q7CNYwEEicaIMCQctbeQjKj8G0afyt3J3z74aKZ9bleXR9Aht+Ynmxy3
	 P668ijagGlH244C0QpUUjj36Y7UaWHCMDpw7QeKfHoev6Z3wPG2UzWYLiSTAfhKi/N
	 wBuaMzuZGoJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61127C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170368069638.25070.12237979758784517407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d78b740382c822505312a4db0bc7d2f5a243db62e4e796871ad00168970175
Date: Wed, 27 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703680696
