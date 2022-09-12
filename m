Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA577F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 665E5C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662974453;
	bh=wEpbqmW8ycy/WzkCvUY9F0r+EGprIL7u/QOlGNisIVg=;
	h=To:Subject:From:Date:From;
	b=PoSHjUOshfNSC6L1QPr0t8byv/qk8GKh92hya5tsXBgpHkBW0MDPlMSDfb0zPLbqy
	 /vaFtWJb1uv5vsM0hsD4eBplNb580Lj+OjgZ5ufun9c5wK9YD2u1ZfPMntPldqIowM
	 a/OSBEyW4QaPS9k9Sl7ztuSzxMmsnTUzBvDVmgEaJ52uls5QH9Q6QqULsXe9zwte1m
	 VB9Wcus+Ja9T4YK4Dw1h8ElvJReBoOTRa1dzDOjiENHvW4Z8rJRVAuDJ4z9juriHHn
	 R52u5/fYu/MVg3qw/ZlUNYepUg3VNpirRJggtibeEF9WquaDo9qalmCp9BEgVrnYBO
	 /hSn5v1lw1I/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F350ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166297445331.5545.767530270713255185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33acdc3007a1bd4e8ef375f02d665ccc90c7e89c5a643c3403e5669a59a22ba
Date: Mon, 12 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662974453
