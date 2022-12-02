Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D1E110C
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CD6C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670005854;
	bh=i9oTKzCHyxgB05tBpAS/bIlqtKOvL3Hvc6NqZVuCg68=;
	h=To:Subject:From:Date:From;
	b=lVkfSKOvbQny12HtbF/pYMYNXnsNbbFWKrySIaZBtK66iXbXnkRw5zNSz8g3kGcrV
	 xF2WiuzD5Ng/MiwzoKVta6/B5iTUNIm6lNZEQ5yV2TPY/Lo+phaYQdv6N4lnhe4vxq
	 kgPQWK5+Xw4fOHNJBKlnLUJ7a6tcpt2YlIdUZYGf3oLrvsaR6ptOHLEBAW2HPiqsIe
	 r6kgA8HKiXjyWptPy6fYNQBqQ0kRZuln7Yzl1s5GYo3ilI82FK8AU1cqi3sL9HUjp6
	 /Sza5bskCfmX17ghK3/J+ttLezJFVcDqR5f+7imIlXifJPKCUtfVGhbVFC6QJ89hDK
	 dY3sTbqj2B6mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526BDC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000585432.29955.14157212384227930304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cee2229df1e0bf47256265d63d1e54056b3d8fa7a57ad1d5e5feba3fd805e74
Date: Fri, 02 Dec 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670005854
