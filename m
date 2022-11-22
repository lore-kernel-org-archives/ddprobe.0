Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B961079F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E46CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669075254;
	bh=FOEPSYfTz4w6wKPsTvJG7MVmw9BSIm/rS2wOpTLnGx4=;
	h=To:Subject:From:Date:From;
	b=Q+5srPck7Mor97+EpinSyq8ts+2vbJshAHadVNWYgEmysfm9uw5e5nCz6J0qfcUyo
	 dhwrilwJabf5CRlv8N3Ylv4Kxnxx7p6/nr9MVSd49ZXDxjPAasxLXyh9W/W3tN9ws3
	 kfjHqI5mJfIKa92vYwHzSL+taYsiRkwu66ycqDZZhR1/IWs3Zp7OU8CaX9BTcmjNW+
	 bfxNX1ho+fmHICPDjotP+1HIsC/SG+mMyHXOucblZn+W4df2gmwL5ajXDPxQYZuOug
	 bc5tlC3hp4E2JJBru5bjbX7KmrCk2XfAQ4ZB2Z0k7SrILqzF4fhnTvKBusGXfTQ7S2
	 1fMJgsb5JN3Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54907C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907525433.13880.9756695236954260291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5b49bd9f02175ec054d9f6c41ade6a6d1ddcd8b0c3a7b50f21b09b2932227d
Date: Tue, 22 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669075254
