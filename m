Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EAE3E276B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774960494; cv=none; b=Wnn31hDH8NwiQU7lmgkVIEML7xyZ5U11ciTKSwzP24aDZcMOjJJbge4TKRsHrWWjrxv3sw3L+Lmo/QufyQ/ezXT5ZNxf8e5OMVpgzt2U0PE4muqqiJpwK23jxCYLwD/U16O0PYFzAvE95NeJMwyusQuYFprn8zg8OwnoWU7Zxdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774960494; c=relaxed/simple;
	bh=5rgmbhQ61g2KOnsW364eJgzqqyw+5Vamz0KiQwfzV4o=;
	h=To:Subject:From:Message-Id:Date; b=m0zGgHLYOWA6bII00g+a0bX0V47VJOoeMp+fTrYkQ/SwSYEI7tctrE7OL4IQupvnPqqsJwpHRLj/WtktAdUvOubJZzHH2rFQSb3krvSNZxjgFxNPLHWis6tPQnCV+XbeXJehzIzHKPI7pVV7Ei2PfywfHcBPLsdYXnwWe+g6Nh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzD3z/zS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzD3z/zS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57FBC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774960493;
	bh=5rgmbhQ61g2KOnsW364eJgzqqyw+5Vamz0KiQwfzV4o=;
	h=To:Subject:From:Date:From;
	b=kzD3z/zSt6RkggK0ENAxSjZKF0MSU3hfcDMG31xtvC40tCsOR8u7CP7TTEOCiDWIV
	 ehUqLcSzFJssXKAAIo2zBjblW7x1fUwFdlj4y2ERuC85tHV8gk7sabVQ+YwpMGniol
	 RyPmxs5qWWgprAclHdRKq0DSPdreCTjvUNuUa3tD+kDRTfW4wRtmH3EqMwqF2cwzgz
	 t26rU9C7oQypjrL39ECxs6s13b2qssdWKEYYjtKbwpXdzb4ctmCtqtY8I49FPPo86A
	 JqWbDtcxv0xfYI/yD08NGDxGn7Tphh8wvOl0midtlc+XPXjSUlksYm537fI6UW70V2
	 ZpBE59GpacUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB71061B3C
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496049358.18482.1002788530632236196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fae22ccb3fedd69cb64faa03f1286e6d540b57dc8276319ceacc8a3432f52fb
Date: Tue, 31 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774960493
