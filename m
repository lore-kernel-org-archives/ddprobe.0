Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D727B23A7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717EEC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664607053;
	bh=1XtR2MNmhK+Eg4m/eoyxdzAoP6l3emubgkQfyo8Azqg=;
	h=To:Subject:From:Date:From;
	b=g1rv1GEd2reG6gO4HAGXTZoHEVxL9GeJew8D5UOTTFXtTnJ+DKBrRT7TYcFzpEZ4u
	 77G0MLYKiltKHpZU66zvDmYQx6ClifYU/sS2Qafyhb3CtczJTuB6Wcu/adAMURtlVG
	 M8ie47C/WaWll3S/AJZBKiSYc4wzZ+Xi+lG8p8Xr0H8LfSNdNzPk9yJtmtaOi5CCmY
	 PVj5c59aoVZE4rOBobK2e/w2NVI9sQFHSYXTvSAhZyRj+lC58cOOOXAzPBRbvtqhS+
	 D1Mab59GUjK+3I04/fEIjzodF69GQhArz9dD4+ArItIj7SC7pZmOkToXr/yBh2bjEA
	 qVOkLOULup4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564A1C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460705332.14120.2592798052401222160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1048ae81a5e4f24d2e6ddd85446e6633e0bd361ce8d693b955564fbfd37da79e
Date: Sat, 01 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664607053
