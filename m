Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B6A5CA8
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 22:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75047C433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 22:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661810452;
	bh=I7TL/ay5yrm/UWMIvgGNJ95ajlAVDTt3klR3NmdKQgY=;
	h=To:Subject:From:Date:From;
	b=cZUTETnxBY0RX6QAYaWWsulkLRSULHObNQr1bY7lGo3DeMLqmhvP8uQB3iWHwJrSY
	 e1JYyqw9XZosKqhCDPvG5kcTBoioJA4p3Yz3Qj1MhGLRVjI8+1JBBGt5DaIL+SK7Tu
	 uqMzgrxV2WWdnuYXFb1pk55RoY/fH1jMeUE/SgrH49rHUXE3uhyDXP3ZbybAjDl+LD
	 /JlSd548xIa0/oqdNxz0tXy14CIqkC+QQt427ByG8aSsB1qlgbB4LsOpsODigAqirF
	 tRP+ZUZnqUtKjZ/HiMCTeZ3Rbgcmy3aWNZUowmNEeSd/Vh8ODxDs1LfY1tzbhoz3sG
	 UdnYaCNSOlL4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD15ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 22:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166181045236.15038.8753781436119734037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21db2c8290fe4779d04fdd1cc1017a95548394270a5594ced1ec63c3e59467d3
Date: Mon, 29 Aug 2022 22:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661810452
