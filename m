Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAC023AC
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E572C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666706453;
	bh=QqtSNlKZUGwcIIG2kVnKi/PSLzxKte32tx3IVwVAdR8=;
	h=To:Subject:From:Date:From;
	b=pwqSJksRH45eIVBVl0eZwqUNobnf140hXC17Ei5wLHe+tCfOBGONJx8Jloc21VC5m
	 Uv6ASNarBlowgEtfZZNsm2q5Z7Ua5m6Er2+AX5Uh0c8UOjNd4/NkIi4WMMvHis2GO2
	 GiHc1c4c3b8bvV5itole3U5DVmAlLvNyQSAoavchcg+mLDJRA0700POCXsNRmiFHEI
	 gF/BQ8oOfX4FrWOMHdonokFEX5X99IPiKX2zOfuOUM24scquX2VwkWEFtmh+AC0D8q
	 vw9saI3mtbityUzdPIefZyEpxjg3clsUvbLp9WMZQuQ8zJs/ytwTcM0LZQnJm4+2Wb
	 EH7TovGGcTtIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534A3C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166670645333.3441.13361117381475497787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1996dae4089f4e681a8a7b773fc19b7c1ff39cf8334bfa47914d3395365a68
Date: Tue, 25 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666706453
