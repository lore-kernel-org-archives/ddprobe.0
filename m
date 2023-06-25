Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E6C63C5
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 15:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D387EC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 15:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687707188;
	bh=YQd1mjivCvdimcZY2zDhALzBYshbgGhbCKwU3uegDOs=;
	h=To:Subject:From:Date:From;
	b=Pl6LfOy5iGE31erO6PU2WNFSp/ZsDhpAldDaCb3tbRmhZ3/QL9oQqP9VXAg2rIju1
	 bVj2lbr2FjcbwMy1rahxL94fivhhJmA8GZn7qGOkKqSOk9+yki4RAvnbXaIjpb3Q0L
	 faqZTQiqElNG2sMuTnm8BPF5M4DUGjh7unM7NS98adZQsQ+itfwVJm9hJhKM32WjVz
	 ypXFmxjT3kCVCtaKqx49Bb+03RdGhE3Xh0BepoI0M4jYYENJIQdcFEXzT7T+P3fcQI
	 MkL2OHE4wqWhadynox2cMgmmFe4pwetZiBg6kui7RKch8eCjdlsCfDw25VEz5JqpEj
	 LoAQNH+d5cDrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F47EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 15:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168770718872.19338.1576177559550727611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c93e75e6c3eb08c03d2fa2d394cb8cbbd52b04272b3e5f276790bc96be1f588
Date: Sun, 25 Jun 2023 15:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687707188
