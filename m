Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2E87B
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3DAC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665619853;
	bh=Nhr4iA8pBgpV2khjHq5w+T2saSlJdm1vs3Qbh3kqXUU=;
	h=To:Subject:From:Date:From;
	b=hMW7X6Up8kyP6SWA+3kZnw/9zTQSxedAVeYo4tGgTwRYHGQVt8tphufKQ2S181t6g
	 o0uClLlw/eOY/fSAsCLP8PsPdUFkuLkfEx6QJq6eS6ZysqyoM/sHWQ+bfstoiAu6Gg
	 ZMIQTUXBWg91r22/wHnBzzcpy4RGDpT+xJ/0wqVo38z3oFpYEZPuloHL9sonr87Cj+
	 rc1jY77nFZpPFV2SxMa2aPMTUTBmBjxGRQXUkP1j9JihLU3YOvtClCgFgv5Pk1HSL/
	 /Fn1dttqSN+KmLU2bgXvkGbWUD4E1jLQK9EYynRvH6Lder5awMalqjEKM7aXJNX9I6
	 U8vA9Q9qyxA9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA76C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561985336.13697.2334440657010776585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0182f88d6b984d6e9a9066cc49f276c55f37abf81289d2552009265380816a78
Date: Thu, 13 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665619853
