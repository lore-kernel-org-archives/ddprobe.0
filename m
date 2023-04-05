Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E03650
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 06:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05E4C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 06:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680677825;
	bh=KABFu48tgiSwF1lABDY9Mv0GhF5qQsCnCTcr/KrdIOQ=;
	h=To:Subject:From:Date:From;
	b=cDiYAEiYfY/jJ2Lr56McRWhz8QDG2Y00bf8UIi32ZETYxzkOy5i5D4xwg9f2U0Eos
	 8XVswuIeoklk0t7YXeVjoqGBdOaJYCJj9M8HiLPsw5jKlRVB6AtcWX0NJ/plP83jVB
	 LFgIm4FYNEy79xL9isXGSR77I3dd1sOE0NG8Wg6AefnQRvZ15o5xUnVLjq1YeGqTDo
	 bDZ2znC2bWhjagTQjqHc69UVTirat9hjJ5JlgqRTkqQRZxYOIBZqRCSRJ6r2u4Mn3/
	 afKn4HxJ+YEwU371o0UqSzQVj5mLhBrt7/WLghEyq8/ic86eEgJaIhtZiH8mhbACj5
	 TKlipDyMGijZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F3CC76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 06:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168067782574.4593.12648925011207254029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6010e77b1ba59e5113bb79af0d9f66159a0250a6f8aa78043de93e3f553f6b2
Date: Wed, 05 Apr 2023 06:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680677825
