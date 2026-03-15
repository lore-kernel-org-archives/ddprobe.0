Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2FA2E3FE
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773550494; cv=none; b=XqV2eeFwVJWp9jCS/EkibyVLOu3qBoYfK5YEB9NJOv8/r6YqTSOpaaT7pY/8yk/4OkVrsC17OcBqX4GS9TQQNPyFvN4n/gFgujp3xc8q/8aTc46s4bQB2RJp7YlU52yqxGyyqVfcDCrxHH8WvzoI6FX+tVJSgjcSert4ApNSkdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773550494; c=relaxed/simple;
	bh=mOA58iK/lFbJyOAuw8C78RshKq0vM5opFhFHcBkHNOI=;
	h=To:Subject:From:Message-Id:Date; b=loVERKwsXodwRXyvj8T8N3J/0eQtOVIxaWWH50Lc0xWyyJSXYdEGTnUEa3vkNEN0rjL4l5CMhCqVKZq2bn+IUUnIISFI4NnStsIuIPkGg0saZz1BGZltJZmshmGOyciCDmzp/tFzupzj1r1rYncrH6a76Iy/IPUGRO/YTLoGqR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBP8dccN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBP8dccN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A973DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773550493;
	bh=mOA58iK/lFbJyOAuw8C78RshKq0vM5opFhFHcBkHNOI=;
	h=To:Subject:From:Date:From;
	b=MBP8dccNOwwuwQYqbhxl2SYVAv8xXjxaQFo4/4g6RV1giKelWbvYj3RbX8p1P+YzD
	 C3lXxy6d5qJnp/lanxdePmK5Xe8ro/wIJTTHFrF6rTbYM9SHicDCQ2yA6B9Fr9P9XN
	 rw2lKBNe3rRBVxX5oDsiwsjAWZSNAQx7VtdpZfroa93w6idxeB74FNVdHAM0Iv8kBs
	 08U9EE2V0vuwX14SgMgfyBZanQkDyAWkm2kyi1+rfUbvwwxqKjoaUQENLRSk1sEEkD
	 hoFLtv04+kIYjtUuZKbjTcfgL7M/WNeIdAgnzuZobLxphlJaJalFTXjPPdbnbK5y6B
	 b/XYq3wtrYPPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E0FD58B0F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355049358.21346.16511547898022240265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163394175c77cd8e5043cefe271a1dc561de97fd0b9f1817a13f7bcd8d532f4e
Date: Sun, 15 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773550493
