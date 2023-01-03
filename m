Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D857A62F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E329C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672735287;
	bh=EbWA0RojRenTYr7eqs+7jQF/JEybWZ8MNucvwu+KDEA=;
	h=To:Subject:From:Date:From;
	b=k/vOKB0qXPOQ0++LvcDuV0/DD3FyYU5KFVGyyA9ELH/e/Cj8mcU7/dvIybLuCDOID
	 UQT9QuDiT8qo63rFtZEQzzIZBvSlNfKxSz4TZOTCnoUGI2+Mlj2ZTEds294DQ5G7De
	 7M9tIhryPfWLJ8knIb8QGbs+IZKK0ZDeJYFVTqHjoDhqty4EUYXhW96KYZsdpQD66q
	 8XZsOZbiQD7m8etIyslxZjv6AIvtKUFJWu5IkswE25uvdEHNAXlxKiDZXEo/bqs7DV
	 3R30kxCIV9blkPaSuOs+S7G86yAZoDENbc0lBIvEJsWI0UrxcK8Tne5SX+IP4o+XPv
	 rP1SUnt0XbNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 737C6C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273528746.19354.3513938830028769585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5276b3639239c135bfff4aa0315b41334aecd65b58049a20975ec6f6798de70f
Date: Tue, 03 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672735287
