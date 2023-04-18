Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAC2185A
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0C7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681804745;
	bh=I7h86am6Duz+n799LtMj3JXldL/pyLKLTwyTPT60reA=;
	h=To:Subject:From:Date:From;
	b=uqwIccINPWc0Q8llLWFiDJr/XEiSXF6ktzHoyEF1KreKlW78svpATYqGuPUHzJQ/C
	 wJgt0/k0mJJ+zeb6HFTbf2ZRDkqZdt9GygBwxrJgfhs1eo1KVUNqjbokOXNhPGoh1W
	 JfV/iA302L3e6z93eyhp6nMJDB2ncidbPTC9JFAYHwLBMzVufRac/bQrXlBW3yg2tV
	 p2LHYp1g+z4GbVG5JpAVpJKugArEqxwm2jHOwlaUvVNmh3V+MitdPF4+EtLGo9jLSU
	 zeWioe2q6zOKlOT4jxWp1WyMLbedu2q3y+BSFv3zk7zGw+/z4QU6x4/1x/3Did8Wvx
	 8wvgV9ZXLP1uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B304CC77B71
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168180474572.2527.10388239095884448425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a375972ffd64a9d74da601fa65b257e2e651950565897f6dee71e21ff60c1ff8
Date: Tue, 18 Apr 2023 07:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681804745
