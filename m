Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3557641
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66FF7C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667298054;
	bh=nV4I7jT8LbhCjDhc3lK0q0CoKDbVT9AMdetWRDZi4Zo=;
	h=To:Subject:From:Date:From;
	b=Oj5XbarWWVtoLj1LR/Qtqiq30Whk4YOJqZmvlmI6mKM+uIeYo19W7tfS+KA/6DGmq
	 aP8I1A/Vw+G5pMimEEadXv7nJkNuZlU8Bkbfy8jrB5VwuP4MzPZMyH0+YYHEaH3Dng
	 H1mqDub2EX5Yejc5MfjyhGSVIaOvTvytW8U9+6jtq3lsOV9MPcnE3m5EnXbYq6D9Jr
	 6iQyEGeS9j0Y9o5vJ5RvxFB1jiayoAsDDorlmHZ16nXdq/YAyRcfjhvryv3B6Lk00Q
	 33zY850cQAWDli0o61dxkbTH9ueIgOR9iyvwZhiy2DIHfgLhyGZVbVBNLCQrXUVRqI
	 /lovnglqYoujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF07C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729805431.18847.7017500825387907585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093627cf0f783b76b7cb754b6f88caae4725ea2776571e5d74f1507d0324f817
Date: Tue, 01 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667298054
