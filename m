Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D00920F4
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 05:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE837C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 05:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690866128;
	bh=Cx3OymCEYaND1BXwXayOERH2yjLJycQhYm5LpA3WFEg=;
	h=To:Subject:From:Date:From;
	b=YYEYy7TN9YwZRoZhBwRYcUMo196CgehJW+ArcvyEOIRbYVCWJk6RsnF5ezhvpLm+n
	 dZjGMViEkviyUVVSaSUXlEoEhKQUC6qHdEEDygl9/f1y9nVKyrLvdnc0+oVLXOUb0P
	 MI/lg2JjtbcY1j6Uey2vBI49Thhb7li7RA1F2++EVal11qMsniixK4CGrPD1jeszgw
	 pqdu1a2zygwpcPBBhmKwhyhx40HogwUWwFkkDAxBOrU5bEjssWu+MdfyoHeG+6brBr
	 sBi3ge3a4Ysi+FzWwfGco4B0Q5b9GhEpzCj3raQaMbDhatALgqLxlH7EYdLRPxgSJw
	 SyQjyBd6ed4Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2818C04E69
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 05:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169086612871.25104.16168992718957085594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88e7de29329f0b83a7d1bf38c66ab7c571483f0c32f2f07d4b493cb7516ec07
Date: Tue, 01 Aug 2023 05:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690866128
