Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D65381C4
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735594554; cv=none; b=nQwlrthF4Ez4BuCFcV8pNG61ZyUo745L8isW43P+22IQQF0uVE1hM2OEKJMsM8dN3iD5H1fP3xSX0j/iE07vXkIaE7xu6mJfqZdQMnTRrX1mpC3a0CUfEUZ5zh/vns2apmdrNwywQz+AcN5vTsrmzQnQxoz5jd0gHo1oF7n7BZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735594554; c=relaxed/simple;
	bh=WZNX6ryO/Ied9/+In5yT2frutGvrY1Qj26WZyUs4P0w=;
	h=To:Subject:From:Message-Id:Date; b=Zug6FTyVQRCcks8EK3wAQ5E8JBl8W4DsBTH32g6y2Aw9TloB5KI/G/xRctacNlBw0tyq0vwTsxfLNOt9XmjcLt7eybgWAgH1QPwuoWVBt+mk44mHjgdqXvZjRUwYbgYGeAufqwKtk9LW2+gbfqaADJN4Nstv0luifm1nfnVjso0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui4SOgWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui4SOgWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A815CC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735594553;
	bh=WZNX6ryO/Ied9/+In5yT2frutGvrY1Qj26WZyUs4P0w=;
	h=To:Subject:From:Date:From;
	b=ui4SOgWg13yfAIQsdTvD9KBAC4YjJpfey4Yy+sl/V8j9pibi4qSEd6kSCWsnzmsx6
	 Cu4y7wQhToK5KSxd74r5YDI3kRNILhc8fEnFZvDT4spJpWke0U/Y6Ay6e6o1M1DTN3
	 4Ftn3OKSy/Whdbyfq98XkgYW/M4BqFl//l930Yd1Vt+O5LfxvwJb7DwRTL57olMrV0
	 UFe5cfluFPiQsJw9vVke0ktBDDRJQ2ndwsNPWbfMIZ/AQdO/ukdFOgD1RJ3rfUKnA9
	 Ccl0OJ8lTn3dFeZRpRkOu2jDrPX69ypHyrLR+v+AGvbBsJHcDlrw5YGc3TwRoEi+R7
	 d8ZAgo5FrpOLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95116E7718F
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173559455359.9765.16693561605904951356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd0d2aeed7a612b41acba713467b4c6397159ff31ea15a6753fafd836336e84
Date: Mon, 30 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735594553
