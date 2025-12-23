Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFD01E5B94
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766481834; cv=none; b=jlVzhCFgwqrjIigrT/+oIxJcgrGXHBAtHwf7P8tx77FK3jN7dRKbXYN806sTjpBSb0wG4uM2IvqTdvgj/2Xc5E7RTYenjkd+QQG+NKcvInhI0pnlrjaV0OwX2Djd0TUDC241pS83WmiHelxO/BJ3FYpaCvzBJcf9wVf7c55ooLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766481834; c=relaxed/simple;
	bh=xc6NGwvUKUn2GYTfL+A+T2BpeFteOn3oOkBZgUNbjF4=;
	h=To:Subject:From:Message-Id:Date; b=nd9+gn8Ee1q95yC1mByC3yJamsHsydrAq6c4RcLn+O1ORUBKcV4p54qf3FpvboS4pBYhIZMtigj8MbSeZrGYQ9MpFBjKImW14XcYHVIKjve+OkUY4m7DwG7M3Nu1odTAAaKDfu76B4Jn2e/0JxCoPIj5sC0WQJC0Wu6WlVFs4/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B571KfgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B571KfgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2647C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766481833;
	bh=xc6NGwvUKUn2GYTfL+A+T2BpeFteOn3oOkBZgUNbjF4=;
	h=To:Subject:From:Date:From;
	b=B571KfgXikcZoqYpMB9o+sEbR3eO4Nft2ZuI1kS89TpQh4jLtahXyTBxAClUiT6PP
	 yiE4TyK39LnXZdpaMfMr3gsESXdytUeRfCpnATCoCY3Ec5t9iKOqRbJHbu+HXMm8me
	 yjfpxeaFHen1CT/WDNK2SVU0gHlkFjo49EKZgJNXvuIjMDWc3+x8BYFAsKYYgrZSNT
	 2lMsUE6zEasGqNlhKfl5tFqdKdBUWRoHx7kfUc36FVAFmk8RTIdZ6049eqAlct0WH9
	 zIGKYQdtikLXiUoDFQG0aGH2cbYYvWwxtce6rV8BOmKGY4QCXnFvfJsYs62BleiNg+
	 Cw/5fpwMmucXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D7E6F070
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648183359.12264.11481799679246160034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efe2d2e939d92494cc100ce83aa7df274745d0c7231412ce589acee1fd13286
Date: Tue, 23 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766481833
