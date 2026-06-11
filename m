Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418923D994
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781197594; cv=none; b=p1U1tW49p2stu0ShoOj1/Xfe40SIYtdwRIVdbmPu8yMJEHWls7pcFzJx9lYnJ07Z50nC2Am9AxaHyO7o9krS/ZPHSZ91i8G7d4TZwTZSoUbtoc1XEDjGf0IfPUkLssIF7sU63V7UCh3g1kB0BY18CM2TqDOnGc9+FRx210rURCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781197594; c=relaxed/simple;
	bh=A0wLwqOs1lf+XJXyvogI3dQ7qtBwn+/yHrP8s5ry/Nk=;
	h=To:Subject:From:Message-Id:Date; b=QwAS2HoUwgGm4SxbNC/kCSvIW34PwIKPQRfvMiZsS4c0p/wjXq4MxZSadVeevh17SqKSL3ykzxFlnqRtj4c7DgBSfLVxOvJP8SgR+7ZDHU1xliTBu4elprJ9iDstQ5oPj9Y2Vp1AH+sgbLWltIWyrVJCDyXgoJ/rQiGTuYbRvpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nW4vF+o7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nW4vF+o7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29D9C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781197593;
	bh=A0wLwqOs1lf+XJXyvogI3dQ7qtBwn+/yHrP8s5ry/Nk=;
	h=To:Subject:From:Date:From;
	b=nW4vF+o7rDlgNpNUcadWz17P+MFizWJMzc2GUbMGx8+01m76irsDrbjgQYiLACXMC
	 ick2So/AKE/uT0fNobkEOFx3FK9AKhdLGM1uxESO8PSEzunJmVItE/3w/39DV675Zl
	 qEwcdGYvYSOW07Qs+JGyoIDQoBOg+7lPOunXfw6CZzBxe0TFP8Tac5ZgHYn2HhZ3aK
	 6AEuttdju3hMaHnDRLn35hMgPx96ZZna5I3wCPxKVUW6Fj4GLLItOvIOtFTSEzbK02
	 rZf0Mde9zlFodlCWF5kq+XQjAdyylgDpsfPnBoMwVGK6rBCpPWvD7UdnFzYDG9NL5z
	 IhItQESDjYP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1210CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119759371.15439.9285359358268032758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e681038acffe4e9dcb6df10683f3abb90de38957a119c948f4984c1623549f81
Date: Thu, 11 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781197593
