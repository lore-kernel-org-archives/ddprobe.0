Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD0D320D
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79096C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670524287;
	bh=BDA8Jm7goCpM7Ra7yo+etwVuuL6LO8CgebzFGBQu+5I=;
	h=To:Subject:From:Date:From;
	b=ujDseu7LqRClg9kuM001H7pGtdoAMRETmOBgEgKalSZ9aCMEVUZn4QNx0eup5i+p5
	 WyXBn/o9wEfWGncD8bYzkw6oHyef2JcbG/HYgsnnr6dC9Wq4/rbXbGe0XLZ0z7o3y+
	 PGEkBaX8wbE3xlBdoz5aeUqFn95mR2XSwqLFu10Yf8PqlZVEnJ2KOkd9+EKKEjUvXN
	 mn/6CEX6AIyVo8jwauOIZEe6zqTuz3oGBs8UNOEYpj5cg4f8Hg2qKcGz7HlyaZUOr9
	 BGmZSHkAac1OAq41LMaHV3T9pJA/Z2i/wZp4Ld6mE3BRhhMEv2gEkro32XZ7+6bMsl
	 ZyrNPV000ylfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BAAC001B2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052428739.8495.16602932364013540132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d98a84ac0952b598b64c52c00d9532c090d51ebbb2afdfa8802eaabe886c5dd
Date: Thu, 08 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670524287
