Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3811A8F97
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766932434; cv=none; b=qh6z2ezkgXJqJBX1+b8cAbgIkRLsC5nL8aA4X0dQMmVo5yRUl1wUwhWiL8/QdcoO9S6+tg4Wv5gKT2JPihcqeJ6c3bz5hXOD+QLHVjTFn5e2QR563O8uuMP4Adhi2mIk5iC5WSYBXrBEON5c1ojidSa7TyJYEK3RKElj/rqI21I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766932434; c=relaxed/simple;
	bh=uQP3n5hKwZoa3IkoK+Ud9UlaG3nYcJlNPG00ebxYO1E=;
	h=To:Subject:From:Message-Id:Date; b=EFZegunopWvIIDywyeTsxD0XrXFqfTsHryhlOp5qzgS032F7jLJOLRHhQnvt0fIMTnM6KwCcmGslBQxElRJV9B18gToCw4eKJYSNY8AzFQhRwvaOsOAyaebA1Lc0iD/4ye2Uu6MvRuqXArSpTQ+XMPMCTPrAVpsLzBRH7u/hUwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEwcyVoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEwcyVoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD80C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766932433;
	bh=uQP3n5hKwZoa3IkoK+Ud9UlaG3nYcJlNPG00ebxYO1E=;
	h=To:Subject:From:Date:From;
	b=dEwcyVoIjJZ28GjG8TsH7gEV27MVrskG0BgXAAU2Q/pDYuAoPowE5E5pbVQSsp343
	 cjgzyVKHktmqvdjkKC1D4WtaLj+m4IGUHsvPcHCmN+byciBkTY/Key9cgwce3AN0U1
	 cZ2rdCQkisLGrtMO3QRoQurwB8jK+NUZhT0mmHw1KJnUHGmcFO5RLuC4S+eqWpufTf
	 JD2/FKZvWK0QtF2T6xKVqasBDKkm1CEkpbMsNKjtM2ZPhWSXw3o+1fCtb2o3R6KZZT
	 40M56cP7BAh99aCIxzJ9Wje1Py8bbjKDIS61cQ/I2ujygklXph7OYSnwbmyAmvgSy7
	 uSWnMxeyjZpOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E1D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693243358.17712.9086028898876854449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e549fa707065705b058181f37e9862181656843a630fe907802edee7db495a02
Date: Sun, 28 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766932433
