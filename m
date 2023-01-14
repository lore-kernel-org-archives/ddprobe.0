Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D287C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 972A0C433F2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673684487;
	bh=zETPHAR7Zg4ljZl4MTokihv6umtTU6xsKpVcJ7ILhCs=;
	h=To:Subject:From:Date:From;
	b=r5lpAyukLzC13WZQ8J5HKCnYB9l7MhErxhbT9lgC1AD93VJWyJ0Ivp+HoDJHfIybY
	 HfLTYkmBXOIaZNUM7f+EZFxFbrFhkZbrqqwhN7SvIB2dxPwOTr0vO7fB5gkShKGetk
	 e+8jHP4f/Bip36RkfFp9ZWXaKgdF7P9C9xqA0tR+GfC4mNiWyHBpkuZeXCwvz+jsrn
	 084vdeEdYKARXNZ0ya1sT+W8emvKiplZ6N1beH72lbNM/nDnpnb/Cbs5KE0Wc/vjJY
	 1dhSnRSJT/UM3RxZda1uTYFO1BVuu4BXC1OLr2rdzVyACHFhR++A7ouZxd4I5pETtg
	 Kc8yLCicTvX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 766C4C677F1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368448747.27385.15686790016487161137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2d1d84b8287e19031de46860b0eec48e293f0d3b7ad7dd3cccecdbb003dc73
Date: Sat, 14 Jan 2023 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673684487
