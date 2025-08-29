Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277D91A0B0E
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756489794; cv=none; b=jwpzIgcWPwf9bFMIOebxiNn7/XqmVOyOU2ARpLTXtHtZ4dW7o/Iw/g8UxjZsLjVOu/lGve/Xzn+gnJZMYYXI4z4HtSHxi7+FY+/wLgM+iiViREdDLuujHgUB6n/oBNsfsUk5pYDuc4RhKAzfozgI02gkuXlvi3IXprpQr+qTeqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756489794; c=relaxed/simple;
	bh=nJtkFrxu3cVp4BxCuQ3v47hvgW4Mc511fIpJGgSGm80=;
	h=To:Subject:From:Message-Id:Date; b=FxTCPfqHxT4lCbS24PqCbSsFW9xMGYkBQaNysQCePydZyXuAsIzVhVxSUw5WEZarh+sgZZGf1e6r8x0qDURB2z+W2QbGZtY+QF3iTh7+VkePJsyDHyirV39WEHHuwYejXfUCTmKsw8fmiSBHH/pKTOOlFhJCbAqy7lHX87TwZQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9+l0Ts3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9+l0Ts3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BA4C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756489793;
	bh=nJtkFrxu3cVp4BxCuQ3v47hvgW4Mc511fIpJGgSGm80=;
	h=To:Subject:From:Date:From;
	b=R9+l0Ts3AAca0tRZk0Cb5KM6mqQX1tdyytfCi50aV+Z/WW7GMKeMpfHA6dRD8hdQy
	 wiPGrhlLwRPkQYNyTc2lObahpwpqbdRvVV6r+N0R03WdA0JyE1x6VBdzb1fFdy/K3J
	 DmG4j5uYk/RKzaw97v9YgPlrzCUb+3QrsXXS/q0QuSkUwpDO3L9O+2RiSjBq1ScIAG
	 CEdO1yauPN/f+P00NwVJVLcGLh+ERot4war/zC5f8Bmy5d6DV50ty/lBBl6xv56Fah
	 eWGsPv1mcMCH97AdsZvWMvK+rCVUI5pGV1yaxamsP0ykD16yp7GVfzbzxIDf4CAs26
	 VynEEBJuLegTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE8CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648979357.6743.17829176364233533355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054bd0e6401562e0e71a0a40ca2cfe030772c1f472961e254cc178e4bb952d31
Date: Fri, 29 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756489793
