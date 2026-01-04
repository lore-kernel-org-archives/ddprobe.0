Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1B72641C6
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767531234; cv=none; b=n7Wdrgs/w0VKTL0NkXV15qNA4S76Dl4noXmISXqtMcP/GtHklO5n2LcwMkTGC4JXO+9NUHY6vzdeDVDCYz4rnEHcZ+s2wEcgzKPUAC0uhd4HzwMDRFk3DlrsXrH0l4nT1a3JISTP2+TK1bJcQqLRnL3C+Mj5zBUoaK8zcHdOCjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767531234; c=relaxed/simple;
	bh=4g6TzoY3hysOBbBU/0VCCFVsogAF1OJSmCHLR6rFuCs=;
	h=To:Subject:From:Message-Id:Date; b=dnCWQ1eg97RAlI4ivXyfLDFZ6IOexXASbC2jFrFhSZC7xdTqQI0VMc5LDr1IV+1yCippgtiQJd5Q59vFU22pFOwts3epIk/hBNqGtQKMdnlc6lBGGNKIfQkwTsD3HQvQkYOAjSqz3OdJGMHc5ggDdsFWx0ZDAIKAuqj1MJPWRRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjsVZPbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjsVZPbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEB4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767531233;
	bh=4g6TzoY3hysOBbBU/0VCCFVsogAF1OJSmCHLR6rFuCs=;
	h=To:Subject:From:Date:From;
	b=mjsVZPbghCusTjTCDlbdYnFNGrt3d1N04OedMV09B+qJEjrJD27M0+pnWm2AtH4ay
	 17W/84lyjlvou76zGFHMKBiDT4CXMHXMmAflI/qw9U6ce+TDn/vIz+dLD5wJ0RTkeu
	 3R+XpgZgySRB4oxzx/RuicYuuSpYiCP7SOtVENWjCU/p52ifHganupC3pg2leFInAH
	 HS2YyvAnk+PUgrEWYklU0ub0wFs7KaztV71E4LnnXZGJND1OVIbqmTGBCcxEg6SCyC
	 3oxJ2uxqWFwoulGs3ov5q3aUVnfoCqjfyUpcM/8dVIXnKXDtPQhISzDPBAeGq2Wroe
	 0yVmVsn19Dw6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F16BC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753123357.16139.9100930877966522786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b889b11dd07c556da535ce2e90ddce620b31ed8475084f5ce514809a14fa73c
Date: Sun, 04 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767531233
