Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B87B2FA35
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 17:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 098BEC433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 17:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689874929;
	bh=mxt43Gk9iQ+WvjxNSoJzS/iUHFndrYre9cKjsobcDwc=;
	h=To:Subject:From:Date:From;
	b=MOyf9L+jViVO2PRNQSvTqvxzvta5nwg9bBG4CmKmLU1wgNxYcc4+97cAmR1Vo6noH
	 D7PtA2GhUjdlpz8ERrZjghql7Q08gujWMbQziCg8fC3lKvoYP3VoXPz50JnPZ0+PIf
	 d9v/C77JnloptDTiMUsLm4XhvhZA5AyghUtTNqMcB/MmCvP8FvBLX36LPm/yQaUfQ+
	 6NqMvxQvSBOi7ZgQSkrl1avGyjHzMPhv4RyWT+lv6HhJqg0zHV+2W08TXN6gC1N6S7
	 LWki5y5fAmoiHiHb9UNlwnAbZ4YYUT0F4vY6up6nj94Tm/9N60mkjd5xheqyTByFjn
	 O00vPInQe2j4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0D04EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 17:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168987492890.25772.3553596857092182966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f702a9e63cc2a5996dbf4eb6993ffeaf031dffc65e67000ad822e078c3a9a51
Date: Thu, 20 Jul 2023 17:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689874928
