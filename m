Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF1763C5
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE13BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682374386;
	bh=nhrBniZ0pER6GKrKZcvBf8Zn9xwdDmRmxNKrE7U8ORw=;
	h=To:Subject:From:Date:From;
	b=g19Z+pq1Jl45rMXE9wWBvKsRR6K3Z188Drzb5S378L4XiuQs0xyrGuZaE5EScyC0e
	 feOgRAnkma5Cw6SdXs8P5HOzMPKQ8/ElxuykLGBDH27KOEw5N6Hu1DqIJjK5G3HMpS
	 Ftm1W/r0xiWYtmD6w/1D5FWSUhA3iYZtmHbfgPPoKBkyDSZobItV89xGU3PENKDIJO
	 PovedtPt+XoZxNF9A/8hUou9ET6W43FnXSW3WBxzpRcckAkpPFFeNGybq1yb8Wzz1u
	 4kJUp5mHfsjlDiKprL0nKc3oNAhYZGIefdrjA3hfTW1QrpYBu3XN9ax3CXjLJaTZtg
	 n7aGaprtrcDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E8FC77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168237438580.3791.758269811769871695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac60c3696b61b23ce504b4c171cb27b17d0c931d4a60a73052b5d8291d55c67
Date: Mon, 24 Apr 2023 22:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682374385
