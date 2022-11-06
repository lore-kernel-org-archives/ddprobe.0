Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99D21FC4
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7310FC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667715654;
	bh=cu/cWBv7CqViNkc07TKVVo8I7EbGQDjCuz3nUSUhqlg=;
	h=To:Subject:From:Date:From;
	b=T/8gdC/HlKo54he6znanAVQSMcn0h3xxyaCkjrVVMAFghcaz4ghO6gl92mPwBMGhn
	 vcULU5PL0O+TcXEiZiUsgu2K4qg4NvXPCG3bhW1nPxzqnDYNjK5Rg6ynpBeyciobjq
	 B7hO0I8ooLkB+9W3vYMDfpfhVb50IX4OaEs3CP/m5oZ8/sWD2TQ9IPBUAjimaBLKUN
	 G0BwWYEgbeRnIB9AhEgSVsdODaiHjHSI+bBaHv3FKInQL9XT85rqISzrO9lt38R4dM
	 4RGINIrAPW5j5zILBDsXtTsYnx1Zvr4GDvv+D2Lz9LKEghjoCaWFeRsO4n7gjFtD4n
	 ROwTWXGsowIQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511B8C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166771565431.10565.5698834045581018429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd29b9ee10a79a01dcc05d5c4b0d1bf73c73e89528c3a153486f0db1c56c3d94
Date: Sun, 06 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667715654
