Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB9D17D9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 10:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F52C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 10:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674986585;
	bh=UGUT2YrzKUKgd/rz2SKpI1QX4cwvPIVsS26j9Cul8qU=;
	h=To:Subject:From:Date:From;
	b=uAjpKOV70ARxWm3BTcTuStIpozwvEyGXy6fPGTnqPsEXzwrPGXB00Hx1KZ+/z8WDu
	 UXSvn2/LLYNThlanamAgYdLpZkCkqO1V+nrlJ0GIuQMxpP06mJVtYcdGduVNJPw6tM
	 LcsZAIOTu1UKjSxhJMs+Z4v+UqGpeZaUZeERwimqghKWV4MPdAe4ErAfZYayKPIfoS
	 /nrKEqqIvu3YmuBV7RD7jzetnltLSrSTazGE8QIN1w59pN12wvMncK3/r5zWI/xD0q
	 gyU1g1P98NNw1J1SK7PHBq4IINr1qnR+1ogrdfHYx3FkFT9Pg0j8gGN+Xii0NTU0HB
	 S5R0s5rVgGxVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA72EC05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 10:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167498658574.14432.15823153166183930071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f430ac19d51930126fb3920e3827655bd469c2830b909e2e3758041bfad707
Date: Sun, 29 Jan 2023 10:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674986585
