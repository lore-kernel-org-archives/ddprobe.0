Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C0F6D1B
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 10:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/G0dDBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAC1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 10:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697279228;
	bh=p+tUokMi34u8HrIMgxpmXopuKEras9QzwMUipOusdJU=;
	h=To:Subject:From:Date:From;
	b=p/G0dDBPrS7e6lOE8Ol1OhV/b57ENymyIxJ/EewVrWliNzejer4S4B2Bof2fn4fMl
	 5dGrJhTFHXNq1U2n+ShiIzyfbcHfSdsCeHp+7n0qAcJzk61KGuk+tpouZ77xDPU5DY
	 PgXz0mW5JWkEMBn05coj9BeYQfsgCArKp1jAs42QjzfO2OVFy+ukeQ/hFe+6YyUnlg
	 KVG2nbsZaIxhxXkWpnKV0+XcXRkYK1bZnvEO7DYFhPgZtTv15Ubzmp4mWY25c8SREV
	 81UmiVs3e/GP7fj5H35ylWwuuNPuMnG51HWHN0OLY6+zwvb1FxmgHl3KISU1Na2Za0
	 y9DuooTdNpqIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B168CCDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 10:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169727922870.15412.11489585422444152575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c9b2e3e490bd2789ef425f0ec577aae34b7ac00c9902ea7ca17389882c0486
Date: Sat, 14 Oct 2023 10:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697279228
