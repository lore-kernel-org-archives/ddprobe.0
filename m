Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB3D430BA4
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772388294; cv=none; b=Xwkz5w1pRP419PND3/JFx1c+pTsLvMoXKOfcjZ6CPZ0YzIYEmlP00vTHHmaI36NUoW7VeSR37KK16ZD5ESlJ63DJKk2EH789/Oi8KSe9X5UhHiQ/d/8PV+p6HeeWBpmU45ziVCIrmvU0RX6bzBXw8WuDCPaPSTHI+/+OfAzMves=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772388294; c=relaxed/simple;
	bh=whv1wlmrDAn8gT8vq03Jk2bXae4qj+V4g9Eidj3OWMs=;
	h=To:Subject:From:Message-Id:Date; b=qbzvMolZiyic5RdMaJQ0AnZDJQ/BW4rWc1XxWzUN36ty9eXiK6TwVjY0TWSpFf+OXvKuUNy67A9EvuE3I3StaVLIX+RplY7c0sAZxEOBsQTGFVrHEsY5+AALfpvPN7QjyT0Ddq7xZJp6rGbkSn/G7qP/I5AtVmWXxJrpEwfHUFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGP8ZWOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGP8ZWOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44E7C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772388293;
	bh=whv1wlmrDAn8gT8vq03Jk2bXae4qj+V4g9Eidj3OWMs=;
	h=To:Subject:From:Date:From;
	b=nGP8ZWOcTUj23KFnWho7WQrsjKljrSoOmoYh2qrVg5ubI9oXo4rtqbkXsX36Xq2Sh
	 S1uAq0KsK5mji+8yOjbTsYC5Rqfch7R3ztToci6lse5d3//pF4+RViGTyg0fnIWeUX
	 HOJaqqJTDDUDTRckLf1o9RPyewRBje3UxMd+kioAehvL4KkbCLdHWrZBIUNtj6o76m
	 HI/MZfItNAmRFfJkZidtDEhfQCJdp/quSIR+sNBrarE1sCR9zocHDAA56VhY06J4ak
	 FdceEcSILFzpTHCoRmilP0XwauVum1AokqEFfpixk5lZTc48TedPmJnyGJjLX3/Fl6
	 t/TQTf3EEfEJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A680FD0062
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238829360.23206.8112504276934234914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7282e699d881f23c913dc04604c3178398790d6883cb5abcd7eaf5e36cfff8
Date: Sun, 01 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772388293
