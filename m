Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBDB7E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F501C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665399053;
	bh=eTUlfm+DBjZ6DmzxUehtgWr4kqQVyvsYkl/7EVEjnuQ=;
	h=To:Subject:From:Date:From;
	b=TYEqf6B/aEbmxH9ZM31r4ipjIEoVkBluMKm3wkrHwlJE/MlAbfbnP416qpyd0xpss
	 2Gpy51nLSWlYheOeLgYpZClbkqsqgmrdUPuwrKMU+U6DEpL4c4pp6hc+NYJAEAdDgE
	 xxHSh9EyHPgLDEy+NkaEDfKzE4LVRLDZeBBMgYsMpECuMMQy5Rhq2pMQDhdIZZgEBr
	 +WfTkGeNd1P4Vy06z394NuZFCrTdwo5tiGvlAV/KO1ygHHfBW6Sgz3bQjhPNASsE6D
	 kBkAwe0616o2RYTHJmoNXytlo8RJpFJoB0jR/OjL6aDlt1Jzar7ZNoEnUF2L+MGMF0
	 XS41HoE6N48sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51393C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539905332.31720.7897660368130308508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673c9ce82eda1977d1b3c13d02a1496a2ba61b36ebf5ddc5766c01caaac2dfc2
Date: Mon, 10 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665399053
