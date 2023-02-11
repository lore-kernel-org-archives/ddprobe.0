Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EBD10FD
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 12:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F80C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 12:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676117645;
	bh=yfn+YvJ+/T0morp8Lm7/NFe6PhAmAXr+//SgBGFey0c=;
	h=To:Subject:From:Date:From;
	b=jDRJRhKhvie3cTvuhtWjjoSEIIqBRXCvcuJBefxEAJXNmTAnb2qKSKI4qRvDiLKVk
	 8R3WD0boZKzWXPq1wOpRzGvQletwTviQ7FNSsJfW5bIp+C4MPkU8zseBD54EZQFoHX
	 sJhLJiaFN45SByN0lkM4QXGDmxuwuhRRBJLVGXwpSYLOmYdKZPIPqxQ8PCcEK5dNbJ
	 3uD6UTx1z0Yx0pD3RhaTjWX0zFc904ZihpcbvAbrO5fTLjSpN8pODonLwrDgvRO24m
	 ftnte5EEc5+8HKL5NSxd4tc4G6Y9AhFt97SW4N0ng86YBOg0CL465s718UvLWZMfhz
	 OXOCTITkm9icA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8993C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 12:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167611764574.27175.18106273342331359747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d17d85fd8ed6b8ee142405534c7a3061596b26794575c189846923e2fd2a16f
Date: Sat, 11 Feb 2023 12:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676117645
