Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD0515AFC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8453C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688686628;
	bh=QdVYn6FMOBm/QCtHLTek6w5CghABWxfNfD+pi7xZqlQ=;
	h=To:Subject:From:Date:From;
	b=G7ugamonPs3GSiiKEh1XewP6q3ZXpgU5uH2qg3tgxNPRaB73ZP21cKzpbBexumnV2
	 KNZ0g09Nu0ttTF+4p61q3icRqHmKIwQknfBdbLPD1ahjsZ29WJsE6ryvD98X2TSdO/
	 jfsGlZ7zVX7A0PnjSGeTD4SgUL9pjpOrAyAoEtJeS3vZ4rdBzoY7TvXl97kwMj5lEt
	 91LlSdAO05Cu6s7vKgWRfNSMZflgROjGuxjb/ecnKjn4G9cLTZuH2b4SBx+X2CNKUP
	 4dW4A62QA5wC7t8w97DvAjdbUOLGAhnmGiJFK/JBDe6/vXayYGye+EOwm5U/feuSYG
	 YFg5UAMCnFztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4EEB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168868662869.21809.10810659399397710105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34f51ecd843ef85c0a22b19d5b96cff09a7b66cec9b3aa0411ae2a2b65b8a66
Date: Thu, 06 Jul 2023 23:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688686628
