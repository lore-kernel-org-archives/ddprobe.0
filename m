Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591D136F
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 02:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAB6C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691721188;
	bh=DJniCkESSNaULh9hRIAArbhbgE1B9ZlulADM+yqmImE=;
	h=To:Subject:From:Date:From;
	b=GocrJXPOusVld6Yzhsz7Hoq/JICZXSD9sp5SIXNN8S9nGtd/cFL9jYSlxS52MgBbT
	 77hA9jt6cvI2Tf9Zps0n1qPrEcJc+CrY/r7YcgTaogWX4LjPeEvj8cK/EusPM8nfx0
	 LoGXlhchKV1UFLhXe3cAEWyBcJuAOtLB320EGED4ZMBltsNc6XNZKUdUB8nYSm9+CN
	 5Z/ZasYrMmLreJ9fMytuKoMy5TxXpipo5o4avJgtl1YR3tzmVxn+dQ+2eq26iGyFcA
	 yAU4aMHUnOLIFag/x7hM/j59zXPSlSgGsDAeC4C+0I7H4uUN/TdceM0OHoCGli7+D4
	 SpZo+Z2zAjSIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34EEC001DE
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169172118866.14093.2322791990805482005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074173b93eb226b4ca83bb62f1789813666172676a8c488b6507380d433c4d28
Date: Fri, 11 Aug 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691721188
