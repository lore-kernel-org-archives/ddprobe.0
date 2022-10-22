Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D214319B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF78C433D7
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666427453;
	bh=lPkoAzSGq81kYvOH2APtReIA7kNVsaw/0Hk1XipKyfs=;
	h=To:Subject:From:Date:From;
	b=Mwzi5G2UzUgCVuC/qFVrNp0qDC8FIO+3nxFlRGFUCjlxuqUDVZw1xpSrpSI/3GmGN
	 6w742pgLkUD9wSC+4juIjOMXIUoUT3k/5rOgnMa31se2hm++T+tNMebDDA1sAczYFV
	 9JS+5aE2P3Tpeceq8iE0ddoXluRCrCpsF4V9sayW+/L13xBGi87Gh28YdGeT0eBuXL
	 VNX3lyAcmi94Wpmdu1qA/cZCIPL/n+Jnn8BkjN85JdDDQNiUe5QDBfH/ZTibHrku7T
	 I2Fac4UhoNSLA7vc98bvLrXHHrFxPbOJY3cl7F1C3i2B0w7uEIAInUA9M1N/oWuizR
	 +LPKlDHoinmNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75E5EC04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642745345.32253.9984884633929125952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215ad7e6b3c28c54834ed129600d5dbd63321161962697d4b707bf8afa1c5898
Date: Sat, 22 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666427453
