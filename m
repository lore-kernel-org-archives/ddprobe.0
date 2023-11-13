Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D731A587
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kN5Gpii/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A6EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699868896;
	bh=AxxzrI2QVIXsJv9Wlsw5d28bjl9E7qsfubL67SvxBsY=;
	h=To:Subject:From:Date:From;
	b=kN5Gpii/HQV5YE9v7j1uuwhYe9ksZo/UD12H+wg/+DU8+wwEh8xGv+4MSCZwzdUt0
	 Gzbcmc0Txz7R8/09PZHZM/z/fjG9BnbRIPfSbUA9+VFq+ovR6Wvn31ndjTqJRWYLty
	 3m5/atr78EQ0ZYM3nmU1h8znaOkD+PpIFgJi8g14Kd+Sr39ElYM3CdAupIOFGdLeQ+
	 kMkHpowW8Q5M8EehR7uK/ed/GywUT2lVZmm04YRwxm61op4QYiYnDKm/ZiEsgzVMXs
	 H5VJF9G8rNkZePMkYm4ub92nCqKz7+3sra5vjvQTSAgVTQyNHgSiNmF+/ar+MDxwlk
	 r+9pks5ASsoiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81E53C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169986889651.10793.10397883296019392692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a96ab08c1ec05c2572769ba28dc8d9498bfee21133ed330cbcfe72dbefd4ee5
Date: Mon, 13 Nov 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699868896
