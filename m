Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E5D7B
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 08:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CF5C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 08:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676537465;
	bh=z2KaI/FQOT98P58UWD06OzfYlay6A129+mCjr8Tp0jw=;
	h=To:Subject:From:Date:From;
	b=CAi4XF97Ba6JHmyEwqhyYfI+vP514yTQ7CsUFRwqqjk9YS5KLwBsprYOL5ePCbeo0
	 AbiVLtEhyhL4tZnBvIOiOJY01KypqrAEzCPg74LycLSITd4bXitRrjRB8329CRgbYn
	 H/yNOy+8yt52SfJPRYc+OTtDuBNEgA1jHPMpZXPvM5au64CSH+Z2HeS9fvG55kU2E1
	 Same/8PHKSETGwR+sxKBZnEF+33qfnRzKE59uKnY+SsQm5l5wMnAhbewW5CujdAaHq
	 rfavCSLMV1D1uRevfDx4KOrhWYGq0jglng4cjWrcBHziFn8Rz96GFb0Se0hZb9w3La
	 bt1G5FKvJmwEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA89C636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 08:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167653746576.6343.13065036744127189929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336e4ce20d6558393ddb62871f9402268ed3abd5c2c4ed0ea96638ea1534f6e0
Date: Thu, 16 Feb 2023 08:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676537465
