Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588DAEDD
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 02:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B3EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 02:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691806388;
	bh=2qef1YRUBzQVFMmwcj0AvyEKQVxaEV538ro1zaTW6aI=;
	h=To:Subject:From:Date:From;
	b=OwT4ry0oHDvHGbQGL5GG/i1yRk24Veyt3kZ5rRTUwLJRW2lB9KwNR/Afe/xk8hiiO
	 j5INj5+CQrEynaJXamE+qPM7bLTUDSLumrgBHoqrcW15pEQJnj0DntkY2MMvutjqVa
	 zk4h85aXea/Lk1iV0KQMxYxlkoqfX8f3jF8y0NgwIh581TRwJqwuklh3Dd9GW+oL+z
	 sMh6EDTfGD4pdeVNdINVl1AfWPEcvXv5jU9GJ4kZG2u4cBtHu895LcBZXGrc5UAppN
	 nBgK+eC9nb3A8zLPO+OJcSdxUdgLY/XSBJHrSoyW/1fP+mnnNOhIvTHHnmViNjoGJW
	 4dWH8hRDeGcnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C0EC001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 02:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169180638868.14844.18243254721767952205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca4b766698eb46251c01a3de2b2b4ed3a8ccd6a42bebd609bd8549ea8624be5
Date: Sat, 12 Aug 2023 02:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691806388
