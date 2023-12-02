Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF206619BF
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMopq+uO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78288C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701494296;
	bh=IJ2enZIGF2O22oW9tT9EXcp71B3w4XAxWZ9K1sq0QLc=;
	h=To:Subject:From:Date:From;
	b=nMopq+uO7KV+c9bFEoEYQV170ATt4q1i7HyijQYHaWBEuQOut8TyzcAfbbAaJUely
	 lBXjiTl1xyy/FRL+dJV5yW23WRhSaUJWQiO22VPSropORbtK21In949ht73a38x8Pj
	 U16uF2mceE3FDaJHhGMd+9vCZoM7Ni+OwV1BQ0vah/AnJ0Tor2yUIa4D1AyknnJpvv
	 KS6PLqZcmX5cKtMEXBB1VvAFOIXPoL4LmxTigkOVawbw4HnKpZMYq1WEsb+tCm7V7N
	 I8nCe0YFzp2fl0cjBZCkbLXGgyiuPkHrUG1fdxP5vTk0CVxJk+jx7w4VwbNBTOdRfO
	 lA5mD14IzNWkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D662C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170149429637.28492.3471929075448544027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb05a2bc71a51cfb0afdef50e46e6a282367278438736e6069684a62003348d
Date: Sat, 02 Dec 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701494296
