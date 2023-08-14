Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623735671
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 07:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC504C433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 07:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691999588;
	bh=ebQQW1zGs/9Cl/NnmPANmNGMZ9ArnvaN+hQiUSnEYQc=;
	h=To:Subject:From:Date:From;
	b=V2J2NoBLARcVibhaUEn6F2UB/rIjX4gmWt9aI/wNFNwaXDTT9dyQEcss5/2zu1IaA
	 QjMFJYmOv/OaGPokB0NYOyZsw83VOd/hVN1Gie9WmgGE19ujDwiV/8UNTcZE7T9ye3
	 fhvAbPegjXchfLinSAI6TNVINyN2SL5eyseRyH2VX7p6MPT0FQC9LoFNlhyDkyNuQQ
	 Pi/hh6+C8m2Z/KjvAyWqidbuCt09WJmt5qgP0Jla8UX9YETg50PQnhlIJnmcfwgKN1
	 aXPtbXNx4IHj29h/oP0ORm+Xx/RYWLC0cyUh3RZ/KoSsn2HnsqVQ1pLrgtF6OrGnFZ
	 ebxdaNyTtTx7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CDEC001B0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 07:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169199958866.25601.16008407087204982337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9367789da440052e0ec55b8026eff3c1d266a3e2d6d20ddeadac31dac3ec5d3
Date: Mon, 14 Aug 2023 07:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691999588
