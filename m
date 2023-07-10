Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C60117C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AA7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688953628;
	bh=QWxMyG4sGrjkT1P4K5mhtC6OEpb0lZOb/8q/MI605kw=;
	h=To:Subject:From:Date:From;
	b=EiOnp8tKdGt/OEUCpK67ho8dRU7ZnaAfF9qVXGiRGt8d/oHFl55XPH2CB4YHZ5Bfm
	 dGEue459Y+gxIcxL2UAbQxlWcj3nYXe5A2tZuz60pIUvPSR0jGY4ybhVD3ycc71JrM
	 3d33w7ugtvWONViSZwY3j5828Hi5SMNXgfW766z2u9nhozNLtQkWNBFl8GSDy2d9ds
	 kjxg/I9vywt1RSqSZ4NxD04wy7N4qrApXmakb2jdfjnS7JzSzJb2afcQGYyNDdbVDI
	 w2aLG0pUHCZvbmLvZTr7zL/RjA5zzOEYJ9B710uA+i2N4EFrIFTosIkuib/Kd+LJV4
	 YM2RXj2FksrHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A6FEB64DD
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895362874.17237.1695766838426150525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ff5a349a2efa3f2c85a315fe97f4633c56123f5df49892f98e244332d5ec31
Date: Mon, 10 Jul 2023 01:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688953628
