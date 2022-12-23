Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6587AD44
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B90C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671837087;
	bh=kH5VeIZogbNXTWUnRYvX4rvQZdZUKNpzIj8pvXqDN8g=;
	h=To:Subject:From:Date:From;
	b=Ym4rO4n/InO8/f+KluMKAW9dCW2IeG0P+Y0jgM0UZQdqDKg5JPNlJ2jyWHsdRDw0r
	 d/kRqnlKP/Y0B8fd6hGV5MCW1fZA2oqAvzcSOf3fMKLvCwAA4/4anVHNDoVlDFlDNe
	 FToCj2zxaNIDvQniRR8GPY0q4EaKPOiJr1J/FwxFhbXv90ZWptTSiabYraFTzaJ8QM
	 k5lPXMDV7eYoW+vlHOD0HhmHcks+RH3UWdg4IRfRpMZfsqh40n5NZ1p2pua83/V/6Z
	 wBblOUvVHPY7XzKw8gZan6eagspJCkRrwN6GZQ/SmRxyg9JSA2bBmhORK8DW6HV8oV
	 OPNEk0w5c3u0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61581C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183708739.14178.17834775757876448912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb50642ac212fa70610436427bb402c8ec5a557d9eb1484edf41122ad3d46b6
Date: Fri, 23 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671837087
