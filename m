Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCB83EA66
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G42SchSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C2CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702652896;
	bh=wJ/ndtttUO6DMV3aCJqDd/ZFWSW/4NV5hXBR53JEE7o=;
	h=To:Subject:From:Date:From;
	b=G42SchSZ9EqYwLA1eiScgd63f+sm83Xr3/2IV5lpFqQHAArLBz5e9cotN0ziQyhKm
	 HgK0OAILVjeSQElrY4PkZYj+5ze6qHkYkThH5ZctHSnabQ1mE35VdeINrrmasQyOxN
	 1UlIXMda7ng4hCtDlYHL8LqH3BM5K8gfEUxVrj8vdjDaVNV060dhrUD5+QdurrgVLe
	 p68AQ4ml+8gVofC8QIFsadzsLFZpuh2TekW+E6rcVfdkl29rD4lMrl6NVq159o4Xqy
	 dHVue+GzjOhGbBfV6WOoT9xJM0N99V+Dey4y0cQbU3EkkO3+zcgj7xpSK1YNAcQMLH
	 0cOP64yKOIEUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE47C35274
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170265289637.20325.3984688920690108830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a8e173e6279b8643b64b1aaa3182d974bbe97753d8eee7d77c39489bf9e31a
Date: Fri, 15 Dec 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702652896
