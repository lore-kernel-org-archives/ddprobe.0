Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA12372B4C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769633634; cv=none; b=DiUoa2rMUlKigo7zb/KPoQpn5CZBBH7GxE8D/YmFj8SQhLsIpnfadL8j1yNZ4ykLa1jNJDUzIa9dHdJ9Ho/ePT88DxzVLmy9dCZXjE0wwwU/xmIE3Rd6iUpjMfp3JbNFJMGY+zdkO81o4cKA8z2gi0XlnhuS8wENKOotPfNceXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769633634; c=relaxed/simple;
	bh=+qC3B+BViiky4rEz4GZgemIagwjWPg5VpHcqoB6ISAQ=;
	h=To:Subject:From:Message-Id:Date; b=HUgamrzBY9i7+ocAvf8IR+mp07WZuBGoPZkKrXESkYd290zcQAxh2dkvQKWU8sf9SJuHcWRwzj6AM1vpl1rDNh/AykNpnQ7qIF7Z5FPCqHWwamFc8jXr2pkkmHaW4ppeImzb/3/t8lESLKfbPDiI4Mqr8lJAZSoKsk1TRtQ3rHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDwTVDOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDwTVDOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A95C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769633633;
	bh=+qC3B+BViiky4rEz4GZgemIagwjWPg5VpHcqoB6ISAQ=;
	h=To:Subject:From:Date:From;
	b=TDwTVDOwbPQMECRrccMrFns3XXhY+L6kgFRDD5mjnz69RsBC4AQF9g0EP3nAoFPRE
	 HOdpQXgPJTLt3yBGe5qzSj7cZTOzXDWxMOTrRlmTmtXJuLsbz/249Bc07UlHjm1DQS
	 slaAHZyqOqUDH9v1ibFhzgP4NeUJrXy/LPTswuvd3qUDJU2EKwCC++OiEaXbOljDvN
	 H3NcHwkoA2sPAkiZG58dDEqz4K9NHx4toWFBDpnwfZM2zZ5dLCerCbPiTiQxxDRTja
	 /aho6O8fkt6Ie7oRFRG2zaCA5OnNWBQJwOBAErWUHdIXH/s7ucyajRNs8dp92FOXs9
	 Np1FwMZIUrPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F7D46BFB
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963363358.26799.2033047114945835374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadda58a868b05632109f6b2a90284fdc2ff82172042a7185893f677734eee04
Date: Wed, 28 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769633633
