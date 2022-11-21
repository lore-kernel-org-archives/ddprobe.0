Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26BD7FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702BDC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669000254;
	bh=OXxoLtxc/Mtzz5wO5OU7YH2kJKbnNt7/BCPScti8tVM=;
	h=To:Subject:From:Date:From;
	b=ib4UOGoPnuu8ArNYI+UE/GRIEYmsSAQqCoO5lQtcOL4L9dV/RfHwZnbNxEYOwQJe4
	 /9VUIveOexUCQDDajn0JIbc8ddPLaVnOyqTH9gFXebADXPiEMqoeuKXKvK57+wN2lr
	 WDIaBLhB/NWcxttwywFEGhmIz3+HOJo7jSKkKdZznDzpSCVqPOZk+ojNn4uNW1Lnw3
	 pHr9Tj6jzJy2WtPrP3DjWwISAQpPJfllMXsEPIUrhcUKMXtu1JoQbRZ1+Od/dBnBYk
	 rTsJdqSnw98JlREZbC5X165GOCA+1Mysgq4Vq8jH5eDsh7eSF2xdKJd0hg8nrRJs+q
	 TEj2+easJrvaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DF4C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166900025431.21805.6432956239442695541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1191e9e4a1131973c2e0d5c537fc18ed63f3a4404115746ff6121bec08a4a4e9
Date: Mon, 21 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669000254
