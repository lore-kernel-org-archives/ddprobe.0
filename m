Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B04A15AC
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 23:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D7FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 23:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681859645;
	bh=3xW9vCA/VOK+AV0MdlVLRy1y+OLQ643+0siLZXASaX8=;
	h=To:Subject:From:Date:From;
	b=LGZEgoTpfCgjgncM0AscQktX+aroq5nMuTsRMSbKaCOc6O2K57dPwQvVjsF4TvvaW
	 SnDPY59isBUN5RO/NgzHdGF6A2xbmtyG1K7vBtjmiw1c/+4QbPLKgYc4y4PcCRbCn5
	 NR7+DzO+WUxVZufJQRd+Qt3aGM93lPKz9PGS3zCUYRGfY4wQgIwtTWUyS4xOabX/OJ
	 o0qQluBXRuS9WCb3q5b3p/k75po61AQ+Vl8lvZH8bgjam9+BPV6aHrxJSF0xOCRYmg
	 N7dttc0/CYAZdH4j5cTM3zUMUvmzuhv7mkdD4h54K9p7gt2sd5CbTpwZ2b7cndWB11
	 LCIUczOsBfkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96ABC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 23:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168185964581.13057.2972663972198972541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad1cdd8739fbb47496935d50aa1b401518ec5fd859f7824c0d9513e514d072d
Date: Tue, 18 Apr 2023 23:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681859645
