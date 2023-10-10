Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E7C8F5D
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKKmfU5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D42C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696944428;
	bh=7zME0K7RwaVPYK+ezDWnkhMnXTMSTvoAeRVRCW3Ry5Q=;
	h=To:Subject:From:Date:From;
	b=oKKmfU5nT9X38+bfLcIRm2YwBn76I/s536aNSpDZle0QbBfPI/7OZu3ZJ548kbBFD
	 fxNidPNxo2HCsU4YS1is0mhnPap15TW0pxMk7nEt9DiM0UjAxJOw/Br9Lyr45SIEP9
	 jlIEy9ZR8lVHHUtF2fXOYgYk1hfJ4sPkwupoCeLQ6QGkpq+sty3XzkxVBlbV/GSCKH
	 TT/3/jX+GgAY7xNDu+HiDsyZgPIsJVHjTVZO6QqNIp5KzqjlKOTGpewdoAJBwHq8iM
	 fnUPzJASi5DUoYSULlCQE2pwpozAx/nXU63hl2ausFKCLXDSnrr7ll+pyTbu3SBNKO
	 h1K3TUqgKAg9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A720BCD80D1
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169694442867.24035.13953905244899358780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b39b239ed893082716736f45d251be6a8850989980155d7084fdfcddad8e39
Date: Tue, 10 Oct 2023 13:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696944428
