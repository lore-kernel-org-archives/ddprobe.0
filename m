Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34E420E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA8DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668855054;
	bh=4aL1VPddGQcshPztgEh9lUhsEVZxVsWKmLSgqkRPrV4=;
	h=To:Subject:From:Date:From;
	b=hFa/AwYxlBfgiRdO4R+ENt75Fvmb6R4wdGp7+PX59cC9M0eFQbv1Lc+FNXZM/y6Gf
	 tLj+lGLEzpN8hZRAC0atHbnhAJ2kIaBXBWHeoURYGGsH+PVfHogYMnhgG0mBF4N1HU
	 UX8u7M7bxc7SwH3QhHyz7cOFc7kcDnUOJnlbCXmH6cw3yytKcDXk3SY99l3ffir9B8
	 ypQB8AYk/ZYcBiC0X7iBv8iBB7l95z76FrCx/DlITzVL0cNunli8gIt6Ssv65XUypv
	 XeB0VJXppmUG1KNmsU1ikG04vQVk1tEQq0RpuRBxr7NffFEhsCmym0rEKpcJY+f5A/
	 JWDT5esB5gPZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D95EC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885505436.29126.16756203152817708525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df793b6162bc504b737315eef1498babe1da6f0ae494b5e19abffdba66e53c4c
Date: Sat, 19 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668855054
