Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E15D18872A
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776138454; cv=none; b=eLVG77N6J+pKhqGp7GYVTss3DRzNay5Xd6EmKiYheJdp+rlJF41rCcbMBAvpDj5dvXbTbq865knG/T0JQ/mi+s2X0aCJxpMjCXTz2BeaNvU573H/0LfQuMi4S6WoBPluRweSx9SM+iNobsEOhbrdCHfZxPcLqNb9stnzHrNXzLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776138454; c=relaxed/simple;
	bh=T16GcgIzz7C8EeYZYZKUKRZcAqIDmR2DeWFP+XSbiQE=;
	h=To:Subject:From:Message-Id:Date; b=Su29CAtChXWL2cY5KDGl1vt1RYUC9Uvno9GMzFGEK4Q2zR833hiGm2FBObJw9kdxLSDZrt/p4HRKkgcSe1y5l4yjQmbTf3QmaM7LrTDVFq+GfHdA8gRedZm9lWOX2+OazBx8fSICNA/XCEADhbzjF2jH80xwuPlTYWPsxIBwGxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lt6Snpk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lt6Snpk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5309C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776138453;
	bh=T16GcgIzz7C8EeYZYZKUKRZcAqIDmR2DeWFP+XSbiQE=;
	h=To:Subject:From:Date:From;
	b=lt6Snpk4wzoCSphK7kJsN82fgK8DP92Cw0lViz3HYKsUWCCM+DlJ3BwSlG3qkORzs
	 Ub4PyYgJDcPSgc23vPw9qQu9vvzpFd/Nt5rjURdor0wGgNBmk/TM/9DfyrOkpcHpOi
	 G4PJHAM4MeAtuFOECI/A/y4ODYvbTLFGlOft+jD4+DPzkrNpvs9KuQjQFzUI3UTkTq
	 Px6XaSYbK6irBLvHwltKivaQiOTR6xiS1gwM8NzFRaUTjk5pTzd3s9yl70IEYpUMdo
	 FqzrZ6Iq+RJE7SHqWrCOIiXkI9OEcYlvyUJ5XbnqIdl6g6+OZmaGkkDlPEyjCot6WM
	 m0eMm9mykHl0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00DEF531EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613845370.1841.4483709742458414470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b9292382856638e3f169dc972144990b387c7a35d2d101df92415addef1680
Date: Tue, 14 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776138453
