Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F2A187C
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694DBC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665319253;
	bh=Bsn0n+aMbYn0HMCgDSjMJMW52wWiG1raemtaBB547AI=;
	h=To:Subject:From:Date:From;
	b=O9Hys7HUoQs1bjmzM49DjL261Cvn2Lh0+hsXGVmdNrXdUGktjjHBt0OtwkhRpT/rp
	 hb7tNU1dItn2QTyuV6hSVqRfeM/ANcmmiR3B05NvTcz3qz+ZHh7x14/mvDIuWy0Zo0
	 OjkDD+I+Hjb892BMJBwTVLFNJDR814Bpy5PZTbc1oqDk5v/ufRheQPHrucFik+3joP
	 9nf2gtIYYybJUfVKwKW2C1c9RXnutdxy2Pl/jFBqCbNfNySncdxe4SdWDl8VpqxvMA
	 NaFFgB+MzgSjBo0ihgc/+sEqqjF6UbIO8P0AGVQMki7cuInnsQXXLX+iukKVV0L9wn
	 zpofN6F/nfQyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBDFC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531925332.14195.8015727858188962571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f06d020237da5417be77a6cd8bf200aa73f766a7367bdef23838f9af969d32
Date: Sun, 09 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665319253
