Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0E9A21
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 08:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB66C433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 08:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680770225;
	bh=vv+7Jtfy1aYNgdPKXE4KtgdPEvYHenJEwrbAgru2rr0=;
	h=To:Subject:From:Date:From;
	b=VkqWRBCUjFx4lPyppzu77iWm0R8jo8K5nu/2dWanXee37MdlS0zjrAlVPrAG+8PpJ
	 kFyZoLc9bEUaTd8zxc7FUxFNuZ7h29LGsjVRx5vY9mgmR1nmEgRVHTXWzku7uy0+zu
	 wHf9m0837bU0hzAWx1K7Xtv5+0gaCzcqmJLQJ/WiwnGxP6BfHx4He6itwEFoffRqjB
	 byrLup5QOEj2/6oioyUVybH52srFEvEGjViVRvpaGEkGziYXu2QbGImomuXpOOsH+G
	 sHLvrHvPG1TnG9+IO+SYy3hVDLMCAZczwFACq7K7c9tadz2dkd3wstNduNc1av/P5Z
	 4c3TYUerJE3AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1E8C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 08:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168077022577.28876.16216253989104996004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7173711d8152ce93101661fb12a8b6f386ec7e017c0e342c7af12c26633d5ba9
Date: Thu, 06 Apr 2023 08:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680770225
