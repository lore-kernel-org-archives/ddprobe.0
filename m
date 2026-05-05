Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214953C2796
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778011054; cv=none; b=gjYw8dLZC0c+ZDND+T+7WCCMegoqY4Hix6oA/M03IYXk3ER1cUwCyoFY9Y1hj4i+c5WEAgcBJWHlvjkri8Syu32hFEIotpNGBy0ViF4/DVlsDRAa+97nDEJKpoqKXyw9eY4zcx9VtNDarvLGBLLDw8xzJ+zJQ70U+1FPFAIKSD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778011054; c=relaxed/simple;
	bh=p6Nk3sUL1Y1tmfMNM/3Hd8i6cyZ9f9Zy45s5mEZ6gxs=;
	h=To:Subject:From:Message-Id:Date; b=HFCjQ4bNoHgVpXQBmynQFTsR4jWv9Ri+HdP2WXh4MBOfNSF/At0/P9sFWQMiGarobpK+e5DDyL/kYUUoC/Nl2yyr810KhwIOefMmc3/hXmShoMSWBvblvlK7BaS5lYE4ucWePlP9VWC3/gryhtGXfWYFAFfmY+dSpWsrEKcXNvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQnmUtZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQnmUtZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB956C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778011053;
	bh=p6Nk3sUL1Y1tmfMNM/3Hd8i6cyZ9f9Zy45s5mEZ6gxs=;
	h=To:Subject:From:Date:From;
	b=vQnmUtZ/vyS+lzUFyiCHWq0rw4tZe6rZ2Yp00Y2rJmi5p+dE4+35H63uFnpUHOn7A
	 v32d9EIy+L20L1uyBEjejtgqQS0SaI5BI+aEfNbyW/0L286woGSHe4wcLDhQrf0lq4
	 0VS5KKRC0yvC9W/MP8JQ1/tJ3S75+qD00oP6HdrcZ8dJjKlIwkeJpWSAhNf8JiH9Pb
	 IARFIifmBrheirxWq1ocH5yVB83ZSdwztnzvsXGHXpF7qIOCcAkcnHMpZGXhXcqWKU
	 g/xw8LCRW79/TASzsw99v4Hv6L1XolFv7RSX8izKUhgUJkNxOsD4uu85u5a2mrCzHD
	 i/1sHf6V2nO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABC0CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801105369.10352.17529210837024342975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a100922c7442737fb4bd43683f8a6285b3c3ebcda748747c80cb0a8703eafaa4
Date: Tue, 05 May 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778011053
