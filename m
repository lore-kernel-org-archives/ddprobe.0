Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50012563
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E171C433F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671698487;
	bh=5iT6A/RM7or6TpxhUPhL158mI2H33JsHGe+NMXHL49Q=;
	h=To:Subject:From:Date:From;
	b=nyaASwhGc+0Eoc7/lYMFY3qKXoQkD/GP6sOiAZKkIKMpl3a+021OC9W9tPvWiByVu
	 HhGbyl2s2+azsVYXtZ8bXOh14W//FLaEu+JD8x4o837yxEyiE9o3dkOFqaCCKS97BY
	 decrmUbJGP6Ks7bJ8tYG3NBfYI7tPFCCK1JRH5MHNqGFcOqeAYgDjOU4vox24XU8zS
	 Aliv+94xjb/hcpLd1dewrgsZSnoeSTgP+MvaDFCVmA5H2hN4sxcZRZ4cUjENPSpND1
	 IROYxrsKUf5ZeX0fIoKy5BobOAKqymAmy5gjuFpPFi5LDmeU1XgTwrsfIaBpDW/woj
	 4cYvfUh/PvkWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F7BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169848739.30631.9718729180881261514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f756321ee2c34e9799fa1d14e8be997a62d817ce896972f22c6800c166da54a
Date: Thu, 22 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671698487
