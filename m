Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9A71775B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 21:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2840C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688764628;
	bh=f9L6l/BaPQKGNyugm8D8TVQwwU1bl8iZJo6pZ69ZHFA=;
	h=To:Subject:From:Date:From;
	b=id6n0/8aF3pVT0UJWNkYZpe1+zbSpKTm+QeUFR7LMFqwXW94bAeTC9BMuSM7/2R4g
	 tJv50DCkOn4i5htGQfgJo2/yfLrUjtGKFlaos/QaVB2G+B6IQLwJ72HtHvZsOhC60I
	 T73bemIoD6Q9kRAk+kIcQYpgtj+y1GMlzXFMdbkOLTyjrXxSx9UlOaODjQh2fBCWhy
	 6SevQr0XxQIeaBdsRQ2sE7BRSpxddXI7svxJE2/WcLq2eyo43BvLCy4uSneZZ7b7HX
	 e8m9CNTJhrcLLFNu0Uwh3N42of35VQjrV6CaADKj2xDzAUvOURcg4NVkJAidjdH83B
	 1/sWISXk5jj0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E6EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 21:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876462868.14960.175959935724386303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033fd4d6247e9253ffaff100eeaadac24b8fa5f8076c605b3f92076997f3951e
Date: Fri, 07 Jul 2023 21:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688764628
