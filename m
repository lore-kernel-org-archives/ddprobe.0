Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EB75233
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8096DC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673302287;
	bh=Q9lgxQ2M8NPyRDw7W8gYjUiJe7Hl2B9XcWAv08JMFbk=;
	h=To:Subject:From:Date:From;
	b=ImWCdvQDYiTD7NbzNBEIOV/Gnjt9l+0IWWc9Mdf2CwprRMqpQlU9fHiZ1l7CkH1GQ
	 vo5fixIjFvYrjYEWFP/v7VhmE1HqnI1cPfYXmMjqhb9z0Mb1g/FzJ8UHvydZWLaNmR
	 HTN2U1RUK7o5UGZYx/W6lJifzW5uAvp+gscGYZvazh759Fg0bVlMw/iD7aUasdhwOW
	 kjkrhC5xybpa5O2mUCyIDrlknwtQ7StZZytS2Rs+sNqH363ZgLYWRgp1aZCKcQa7Xy
	 R73d7BwG1brho3ab3Bmi9HVXvDfwVHASDO5rR9I3iWWcC4Ugfbe35/luJ0Wk4gquk9
	 +i/Drq0wG4eAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611B6C63797
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167330228738.1627.5151260290029361624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248ffd1a159b3a91a5777f8a0f125fd69a0a6577d0ca26fc236a04a0ddee4b9a
Date: Mon, 09 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673302287
