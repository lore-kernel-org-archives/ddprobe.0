Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5C1632E7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770005634; cv=none; b=WntwQY6tBIHg0Jr2wagSxLXc0r67TBKCyAY5QXhEnVE6s2rjbveSjCuD1XtZ774AIRkYPQq0cm1uwQNZ9NjokIqo1U05sFwVRC6nxXyg+zBkPjfkDEbTL60aYnSD2DnH3IRY1Y8zFI2GAlNq6vXHXpeQrHhhFXr8cWVTScoAmjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770005634; c=relaxed/simple;
	bh=JSGblj6SbI4qq5HusNFwMUaNd+tgw8kH70mY/MoSuwY=;
	h=To:Subject:From:Message-Id:Date; b=b8qhMSYRDfcusekgL5f8bROCTUaFiBJTx9as1+60gEmARKbq88mkOepr62/PNEyJNICWDteCh/EYGvNHIeE5H8pl6KJ1nF++x6E6Ef0vsOG4Qs1EO2W80v5Koj2qe22f93xrinofptl+aWCd0J8s7JL4p9kLnQnoYrZHB/oOuBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSC9rRaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSC9rRaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14B7C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770005633;
	bh=JSGblj6SbI4qq5HusNFwMUaNd+tgw8kH70mY/MoSuwY=;
	h=To:Subject:From:Date:From;
	b=tSC9rRaRDK6IwA3BAUH9LXRVnYlDcb5hdsWda7Q2En8vMx3VKR5fhqasUg1bwEtH2
	 YGdQjLUUBh7cr/LvQxSRMvJm3Y1cmJP8tzHYDnh7oWkRp4Cx4LsjS/ZbS5XSTqIwkv
	 TDHsE6AW1VWidodKjVAbevE8VNYQtwvcgUKlCxG98I/LnG9/Yrbj1uQRbOIeYzCC55
	 Ka7Nyd9r0TWQa7ycH+8lYoiR/+QGUCHZOa05IYegAaPoqTlqtXJicIgm9mKghkU3IY
	 Sd8niKCaWzYQzFZkwfV4deSfsEvLu13UNzqriHbhGhvcPTBh+rmH5mvnTQW2afq2MU
	 vdFUJx1V4S8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990F7D172C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000563361.6735.5474606390591662599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503acc6b4efe1a655eb4051904da986ceb033980a38cede2d7cd191dad175ed0
Date: Mon, 02 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770005633
