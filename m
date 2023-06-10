Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F631FC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 15:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F0D7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 15:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686409866;
	bh=giW54TYEutOx3ixRriiWLcY45kT/RvTPvi1R7+QuLQw=;
	h=To:Subject:From:Date:From;
	b=GwGFzowjJc7yOgpOg1hMeh6BeZ/B24NKyQXgqz0Rzz+D6s/UO0i6cbfkcyO8oAlDV
	 KNyz+rasD8am7hvC6rizB8G6vKPGqQhoQvoZ74FrsN1SHzItuoIJIP6U2JLXPgTpfc
	 KdCRAh2gNoc3wWgedGKBiFFbH/UYYSdeYns0v/VxBf36kv/eBHF6er10lpNmYZsVi2
	 1eEHyMGCfwC5V2o1JOZqzbUG7HUZrUUcvX9UjPjnVDDnEaCLgkY8rCDJy/gvDO1asj
	 ql548xLBmtK0TkW8RFo6P0MySK1YMmSk0O/1J2THkC+82Lq/xl6d7LrjtvaW33oKEe
	 ebTGmJzKtT5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF69FC7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 15:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168640986580.10268.5059082906133894283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09cdfd07668dd83aee9f25ffb1fbb5f1782908c15fb2eb2cb3a3f82d534cc67
Date: Sat, 10 Jun 2023 15:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686409865
