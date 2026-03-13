Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0752E33689D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773439494; cv=none; b=h7oBWu6ScfK5lZ8dGWIRYiW9VwBHoDTmt5g7Dm6ynXCNHvCe5kvVYqpzjRj0zBjjJLKm8NVR6FIuIl63q6Neib9KEF6yQ/99CbzgzXNBVpRwCj6NRFAEZkyeR66shtr1T7jYxx/Qrj7fIeLc/r9g5VhT2PT5XcPyWk1Onk35b6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773439494; c=relaxed/simple;
	bh=q1wDFxfQeI2wtLuczTQmNnvCCjUlC31oCHo11dvFyq4=;
	h=To:Subject:From:Message-Id:Date; b=HT6gmc3uG9yIGqI2pI3bScyX36wIptFtCqLpji+aYXoOFlXxFWH6xsJMkW8GjzsBVyEntutkTPkw8DPnkEbnxlhW4quCgdDxj6QtFCk639lR9wiDd4ZP3IgyseMnDhfoACUpOwD67WwCh3HDcN5MsJkxHPZ7kYNRh5ExDR3OxVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSbHoDUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSbHoDUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A597CC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773439493;
	bh=q1wDFxfQeI2wtLuczTQmNnvCCjUlC31oCHo11dvFyq4=;
	h=To:Subject:From:Date:From;
	b=qSbHoDUtBRnd/cFgZUWIuzqkAtGDePS+bCyJG6gnMZ14euiQQpi9Zv0zvxVKWqZZr
	 5Hd8w8RmZJqNja3t5qOiWZRTqiTao42sytgBCjx0AHc8L13RGg6SXrB4rYAexh7x8U
	 FNcdi4tit6P9lzIC5cxxKTapYJX2JPrbwb5NzF0k9rdirTo5MF3lC2dC+k62zv6nUt
	 zSrTg0dRexH6CTB5up8ad0XkGmY0rLKZxn9cOeGvPyxcaPD5tQ/fKQ497Ppnr6IMOn
	 0R2+pOEU/WDxBi2ywbuQwXcdTHgpcKm/+fpeIU00Mv6/wmPEyKwW+IH9+/kTVzOuEX
	 0JY+sTOoq+T0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2E107BCDD
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343949358.5397.691688311260899312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4278ed6223833411848d1699760f1dbb29ec7147bbab42f4b182195006cd0990
Date: Fri, 13 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773439493
