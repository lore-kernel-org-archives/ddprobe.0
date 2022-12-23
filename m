Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B2017CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A12DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671768687;
	bh=+/13cV2MrDCkgJDVh7+HDBGm9YmGJ0PZ+iueCQDUbpU=;
	h=To:Subject:From:Date:From;
	b=PUBQySd4rvT7QSpUyFFLv2yU/nwxbLSN7xJhsd8uIpTk3j07l7VkiRXJ3CaK9JJQC
	 MZfSkbZKG4M1qLWh53Qb7BJ6S6tZ0s8DeGRg5yYgaBK+786iOw82PcBLtiqV5fDqu0
	 lNLZ/iAh61InFO6FfSUfSz4GrJePXrVF9IMKlVEX34KmuNUiKZgt76fs1baniG+Al1
	 0elKs5KVMhb8J6iochacGzewuUWDXcUbcLjKV95y54hJmrRFz8zK0K0y0jSkNv3UIc
	 ZbZ53wc7UKnE8ZxZhoWI6ziV+chBtQH5GjsQstw+V4GZuvILsiuAIyZvsgpLt6DUP1
	 e7HOw4aLj1LIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2CAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176868743.7854.8998897852476791606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05bed93af59fcb67171f36326076cb3ed26c598fd800a6002e7dabbc56041e69
Date: Fri, 23 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671768687
