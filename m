Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB263705B4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756233594; cv=none; b=SW/Ebgrtq9x52QbGdEGs2Hb2xyRl6ckC+Q6BvNX9RSATNc91pvCobNQkjek4UhU9NPZod+VdP8l2qka1HEp9uYyT8SJp6VhPDXuBQaJQHF5hUnGnt/Qvt7ivgARiQHFPLgygssVJNlBn6RMZLMv16sANfBcA4FkenxhgLxqeoQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756233594; c=relaxed/simple;
	bh=ScMTw3Q2mAg+r5VgpnaXXlNcWIErPxqFoxZ6oEcYyEw=;
	h=To:Subject:From:Message-Id:Date; b=XY58fxazeLEChF9OZhl1NN5wnvYsNFNL9lIe0VlXWagVvRHADRH42aOvkRPNc1GvlI05iJtILe6O9CVLYRvMzlbBY+pdUvgNVSIzS1FylNw9/g3jCrC7BIhpp3f3x+n2lVZasUfIXlWbAuMy9yDc2Ep3Z7HQwq+Qpy+SjS9/Alw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVeplVIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVeplVIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC41C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756233593;
	bh=ScMTw3Q2mAg+r5VgpnaXXlNcWIErPxqFoxZ6oEcYyEw=;
	h=To:Subject:From:Date:From;
	b=LVeplVImLWB8tyxDwuoxu4EBloQ/6Vale9Qt0y1JAjfHV2e+2CjluvlZJQZQQWDil
	 GY/ASEj/hgv5Wte5eied6eTgFkks3Z0Ikjks+LXpze6WF8RehB9UpN1fEmM7QgGErA
	 xv+e9pMRseI7y9gh2JRmf7/spY5X76ymdfxV2wIs3dFJmT289l7GZ//czUMHtonJsq
	 u2cTH/5Fd6kcK83TTint2HQirogYnES7kB1b5TAmRAdPiRW49vxLrLwSBdjx2Zjjz8
	 y5+JZlk4MDVheMw/cpQpzZAT6PFsCt3sGCtxu202jHplDEDxJeaPX4VBkAcTla60VB
	 LSNjwT8J6xSLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDCCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623359357.14402.7557741139804640610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf34af57be9f6fea63b4646eada0b75bc907c780898d16e9bf24d567141af54f
Date: Tue, 26 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756233593
