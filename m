Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F296B6FD9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E9BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671725487;
	bh=I4frDRkzIErJ9w1YrbAUH4dM5Xg38SIQeM5HVXrd+/s=;
	h=To:Subject:From:Date:From;
	b=kvsXasgjAZdTsPpDfxxgq8m3EsICeQdmrAQwPlwO2Bsw7rJquLpQOcXcosuW1hmIG
	 Zaah3YsI43KZ+yYKh4ZGrv3aQjNt9+6A6zL9lQ0UiWJhv+xyoSVk5M0OClyP8dC9FA
	 DAKvt5Bac/dkwrRIGtAQXBntcCNqp46c6kHeXEq47CW1nfqQ6otc3SatBhCxqpmmhM
	 qNX83wXBZiXMpiB2nvPWvq6Ylc2m3brW29ZuJ8i/CCcEchAMnpQCwA1GvMyr7Xem5D
	 J4KJp/FEQui12hYKVrD5pVOEHDUu9H9kPJZOcbv+hLIo53Tli0tRj2DeZkeNBgEi3J
	 CcDTEjefRe3Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8EDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172548743.25599.13752523006146103044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e311b08924405ce9767532682f30b37fd53437af6c6f87ea0336c7c0bafb56a3
Date: Thu, 22 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671725487
