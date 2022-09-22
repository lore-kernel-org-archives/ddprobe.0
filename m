Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E457C
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70093C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663867253;
	bh=uUor1w2D8iwFkNeAIcDNybiRgzoU73IIw5mhi02SAWQ=;
	h=To:Subject:From:Date:From;
	b=UySZPcdpyf9hjCeLlox3pO9m0YCdhLeAFUu1FQBCJJIgLgNxxNNIGdhWV2orMb4hv
	 IHb2jsH61Tgfwc0SBKBTMMd8gC1xrdon5BS3APlbn9038iaOdkdXIOPQj++/K6EB1b
	 fWVe0qOWNtEIYbVeN2qd2fARF+UKxpX15FHEYl+LZNVKbAcdWRv0XrHjl/icWecsth
	 lY2WwTynDrf5csMCDSqqd/errkobO53LZz3Wc+YEofO2e+mZg7YbmvM5KG6z2snNoh
	 XN8aXEHImNIcEqERDR1ZAePTPJLGJtk50FLRyiolCrIGFeZier4ygCwvEiISHcZihq
	 vlFSu3gAwlFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515AAC6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166386725332.14520.5210630760734470676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056b1bb761229b6be823d61e65731f6bbf84f2fd66486783a413c489e9f70d13
Date: Thu, 22 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663867253
