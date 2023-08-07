Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4F6C2D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 09:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5031C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691399588;
	bh=9AHYQiTdAn+HijojjlPo3Iz+HDhK0hfHs7AjFLz0UPY=;
	h=To:Subject:From:Date:From;
	b=WIiiR8QUUIRE5vUcO2j20E7bdTMCFMky+PZtJ4U88IjYe+SZSmyteLwu7lFiR3bNY
	 +R27bK6pIVpuM3IVBGp+H79sZA/On6ZR7ha8b5JJgw1T5RbN/Ab3MTgfFutwVAqajb
	 scLsyHQF7skGj7DflP1kwvRtU/wm03dVZFvXYFvHABJMmirZYUHiZknqUB3m2CJvfP
	 lcqMbjduL8IQcYV8bXuz+qRT3LhYTvA7kiUxx96c9RwbeB7F6O0YbxJGYnT8rVOd1e
	 MDEkLBWP3n27mTN2H7LFRlad+YA8USjgGdTfwE4zGDTg3Rhlm3ANkZRHWlcCZu0/cB
	 aa23FRV8zc4Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9BDC04A6A
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 09:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169139958875.5253.3246872232853605702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8336586030b74073c29d10f6c19558e1ff373ab0c91618d49228b5dd8499b5b0
Date: Mon, 07 Aug 2023 09:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691399588
