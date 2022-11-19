Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C675EEBE0
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A408C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668816054;
	bh=upunrsvmpKGXmXs/fnxXYy81WJux1NUkiX91f3Z7oTc=;
	h=To:Subject:From:Date:From;
	b=XwqRNP0MmyEQxCw/qlT6uh1/MmZYclBg5lUjAH8r25mJiC4rCg+ZFn7ta5H5T2jog
	 7ARGlOOvxolE84jyNQ0bVIxGl13uSPDCG/ST4pWt6g7mLrS0an6nu2b6eRrXqIdNn2
	 wJliRwrM+BT/54iLLjgaBN0TrM9T+Kp6cvcK1Gwu6Ic0YRt0oYFlJ3u2mdvV0Wl+aw
	 +xNdRxQNDt2CkPRrgZxIHjqQIc/1HPQFVlDmZNIDCQ9at+X2XNuHj1kXu5eYRJ/PK2
	 KQWwqqrJfjusdqYYb7E+ALsaI5/bDh2CrUMrkv5Msr3AXr9pImYr8OtOzsUWwM+reM
	 gqrVQp5uQwRdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56887C43219
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881605434.4178.17405328866332826640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0542ed399d80552f37a5e834298dbd7dc7501d4a496cfff2b79d90795ac07780
Date: Sat, 19 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668816054
