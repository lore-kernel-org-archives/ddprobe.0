Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B915394
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E332C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665259253;
	bh=o6YZstLfqJ4Ri6IGMAF7FPLgpmZoaHn9e3lWy8aFhN8=;
	h=To:Subject:From:Date:From;
	b=AUxHXcr5zBycgDhwT16TfeZjsDV3ibpJFh+fAZTMMghD3Dl5djMmR387suLDP9nG7
	 k+lokk42PbmVcyXmMVWqHN2Xl0gY/su0Y1bAE6jz1a4QJhXhuewEq4+mowCrFIu3jY
	 YrndXJXkfWV8IVvB8Yvr6fGeIjpzACyF5ZPj4cFnZ/DCGYBC1TfV4U9h5TB2GuQWNu
	 udGdmDQRAh00myl4FPi8I+c5xv5iipMDvYGDRQCc/arqhfeT7Sj4mRyeBlX8kcZe0x
	 MC5ho0EN8HMZYSQPfg/Mb4RTuacXrJpH60VJ+IXvAz3gHq9hDXzdbvnR0lJcS7nZ+4
	 GpdaZKmX63Vuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5208BC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525925332.21130.2109160172847474607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd09e3735469c89118b9d501c63e61be6293567241ce36e7536266c122a5f0b
Date: Sat, 08 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665259253
