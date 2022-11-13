Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DA31110
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB5DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668339654;
	bh=sODg+oAmTAZ27VdKBQPUuM1zkL8xIBhK2EZIozVLwxU=;
	h=To:Subject:From:Date:From;
	b=ZldIclQfaisQAmky6qvPxhmhQqvSZxyz2VQIeL9roPcEeGcE6w7d5en7SA+wQT2wn
	 p/mRYxoVnU6uCu1wNB5EZ6cQvnTGay9iKSFTA00QbFdf8zOy2bQY0pQk+5wdt8m0Dp
	 4fiF9zBI+8arWGmstyH20CAHTD89vDeK9q3bIBbwPU4DRJv+YlJGQ7lOqMtXBU5V/9
	 LuHnBcmF03yfUUyd8VNDHtReMUV5G3xSS+dlHx40r5IPcWKnJvNz9R71vKj9Az/YM9
	 fzAvYFlV6k59RTuxuG7+zmHujHr6SrGS0Ox/269DCRezLYz1UffPa7/9TrVKoyjSD0
	 6B2thB0wiRp6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7EEC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166833965436.3552.4957698374658227488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d8b520d5303b79c169e6638a9cee138eab15a6f33192b02b113c783a9fbe4a6
Date: Sun, 13 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668339654
