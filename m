Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE23365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7108EC433D7
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663390853;
	bh=vuUPLDqRgAnxWuSYbSFfFXsLphrWndLtnUQRW1yGmDA=;
	h=To:Subject:From:Date:From;
	b=H/BTj7kCM1TlVIJ+nZ0rr6Ib439V/U7tCRH2LDKUf4eBV8exwFwyFMEFrC6foT6o5
	 cuBdMS8g8jX4mrFVE6CCSa3Zk27bEjr8/u3pcde4Q5b1OFuV6y+dy69xaOI5dJHRyz
	 4/bRgF43cryicnL2ZkqLwoE0ofxpCjm58Ip5y5hmD3Q9PkCL8hJpGU99euL/dCGTVW
	 9qjzQpq6Gcd/6ybmPqdBTDhU8Ks/3D1JIRUT/KoZu6GijeLnbfLnc0e9sMLGvAPy0o
	 d+mkAVhfxXec9BLpUtSkjDV1E5OZzIVAuXltNoOv7EeDG/LgtENVvaW+vihtEcv91V
	 risXDqkWSf1mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57922C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339085334.29713.10229377106656650705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02267adb09cab7004741b5b4b7a140d9ee9044a362a0aae17e9fd4f163d9ce5d
Date: Sat, 17 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663390853
