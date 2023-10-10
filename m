Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FC72744B
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lob+/i6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75D4C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696954028;
	bh=iRG6cswvXGIhctrf7IcSMS37DM1A/yg+vcTgxEQkIsc=;
	h=To:Subject:From:Date:From;
	b=lob+/i6gyUZOPll4VfBahgumbllgCoMDZH+AKaZ/UlkN8mCyEY/GYTF9Awrbab+DN
	 7nx9DDQE0RhqW66g+EnMscTeUI7HRfIFwmB7DbPmKVS2521qlzFwx1YNs2Xf6WPUdl
	 s5stPrhrOPb0dUmPGnxGdo9gK8vqtdZ6s9XZNSYLfR1pM5SgMXlIeqhckQlHGx+LWQ
	 yzf5xbZ0YilOUrpRf2fhQz9VSZW7+BY8pVjzicgaBJ3U0+xVfvdj1MFYJdSRoJctrz
	 cMv1S24jNRChm+W9VBZQcA4qHf6E9KQ7tcBrYRlJsl/B4GZHlLvLj1hOMncwS7usra
	 VrW8uKsI00ykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43BACD8CA5
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169695402872.19254.15967367666777839700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a326a86a2474814f1b417359de326177a62934d44937d33c5f8f4be89e006d42
Date: Tue, 10 Oct 2023 16:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696954028
