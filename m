Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0412D1A738
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxk5Sc12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E7E4C433C8
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698704296;
	bh=/GiFKFGrMEDh46dRjoimKhltfw2RtwZabrt9a/tSgv0=;
	h=To:Subject:From:Date:From;
	b=uxk5Sc12mTeGCxTrGOFlV4hjZmlb2ZcskdJcHFKM29S37waDecqLYU02kxHETGpHV
	 9py6lDaOOQ3Hjwy0W51eu9WUvOix7DSHEtpwwq1XkBt9s0zfrItCNs50YrTcq80k2L
	 YEjZG4/qCZ+D1PlagUiZxfGF5Uf77zId8Cwqb4WbiPAVM4aGuEISWgH+NF8erMT24q
	 zQxS5GHjPrDw7cYRKUXrv3Ydtb3mykYlj4F8NGf2hXGexr3FQp8KiHeTex3pR1nHCx
	 MC2ehdfxc/DWwMjedQQW/b4g0PhwHHjj9aBx+U9TUnaaqGsOMvHwSQR0xzLU0Okg03
	 dq/Rexd98UwWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61ADBC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169870429638.22088.7672955200843457598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9693cf1e14ca4f70eac426aaf9ef79a975db07b0295a87c4a1a377becb45e6
Date: Mon, 30 Oct 2023 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698704296
