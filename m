Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372332E642
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 18:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715623943; cv=none; b=OQ3bJCNfCFXlsibE9q/WnbRHKcszGizBY73FuGBXKTYTlSIMvF8t3+I7Arhj0/aZEmqdG0fay5so/AvDCf/uRDmD+HJ6XEpq6c6OHkZsnjvaIdHnFkAealdaHAq5QZB1Wy1DaJlpxDyZiLvg28Q3+P2LdXuZ7hZjd3ZL8sFhx8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715623943; c=relaxed/simple;
	bh=SQRhgoP38jBsyYmOmpLHSW+edvc0vcKvooYsQrohWkY=;
	h=To:Subject:From:Message-Id:Date; b=N0VDskdl5m7vnv8KQVcTkcnvKgYmOhKCKDIj+ZNAcVgZ9eecAxzInZxFlLZEQ1e5ctEcoc/OOJLkJ0ccQUuP4Xwsq/G8D59o2oBD+QzU/jeVvb1lCw84sNaGR3vVXnl1NQgNOZZx8UOQQMCczUe247+02AJrDR9OKfuWdUfsaxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch3SZstZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch3SZstZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA23DC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 18:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715623942;
	bh=SQRhgoP38jBsyYmOmpLHSW+edvc0vcKvooYsQrohWkY=;
	h=To:Subject:From:Date:From;
	b=ch3SZstZhADMojeUUY+Jor2Kv01vfSxIJ3zWOOkzWGBiRbRWO4dJEsjVPBgiTz/PY
	 LdiMZ0LT3zU4L7L+S6Gq+dYSlyreZS/r3LcEbWLU2VRtzNZMYFdTVgo0xEHYlj9bsi
	 t0QLXSmVMvJl3800nQzxdwmVAhaTG76F60JGoslkqRbEV6zkmRnyToaPcgHOROGwfT
	 QklawU22JxrXaN2RE3F1+2OJ33UodNr49IGaZBtOxdUowCUIn1dpnr5Xr0WlkQFx59
	 lIDFeyhWgTvQaYvp+q3RpFdXyUTgXE6hPyp0CQYJ6POwqIW4vTvKn47Lj0j2kh74Ah
	 LW5XsJxZGYkyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1A0C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 18:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171562394275.9398.6231379600955717248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68aef2bc5aacdbc70ab96d62876f01e25c83ac581501344f91094446308cb7db
Date: Mon, 13 May 2024 18:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715623942
