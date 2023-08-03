Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A7120E1
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 04:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE81DC433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 04:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691037728;
	bh=LDXotul91ptXWUaMzzfahbmM4qnJQfDscDs3qjAQvuk=;
	h=To:Subject:From:Date:From;
	b=t+cYOjWwggiZKcS8zgs4H+KODrDaW1McTyAVCDMw9IP+oP2zrhnqF+EZrr3Davr7i
	 tBBTYb5YXyGOVEgjcAPxlIOT7sSv+FGs25HTCf0WeXaxdL99mW163NkVB51O7r7rTh
	 ycbtDGdRnn6V2Q4S4hK0OJGnTbhzJJ8L80nxFqmz974AH7Jlp0D53b8P5RemudN1nC
	 8bSsbt4e1JXEWfhTtTtVGK+rW4hmwjBKVSYcegqRSRNMC8e84vzvWe8tWCVTohVMhx
	 dWpwY2Xs6xXpltZleyFaSO1l5G4GJfxzR8qkW/2NAz9o6FRSCJQ8Q6ujYnntyrHro0
	 lWw/jEXdST9ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BDAEB64DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 04:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169103772867.4715.12359131555391977384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb19e0356d342e83b39ff5e1e80eb5659da50191ce75f353bb30c434a308706
Date: Thu, 03 Aug 2023 04:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691037728
