Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC67B160
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFE6C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666506653;
	bh=aYr8xLphv+rxB6IhgQu/ZqkxUjK4W9+4ddUk5Qg1DWY=;
	h=To:Subject:From:Date:From;
	b=lRxmot1v+5RN3wug1fTgRkGeT695lFcP6WNPn5E4lPSYw2R+5anSRB7deKLar67IW
	 2lbq7ZulMfAUos2wde5ekfcJT5Puo8KDzQ6vwF1JvqjOHrtCvVv+DxTNVG+E/T89ha
	 inn2vwSWMjgva2SLCh0+QnTmUcENFsrI+o6TPIjfTxgwK4v2hH6wXQQn89vRcFGlQi
	 ymeRZ7cZrf7FyxiisQdyKVtun22AbW6OausNn9HZnHhJuWZIeMQw5N++f9J1KOCBSJ
	 VU4gw1SDanXP9NVNZhCK/Lk+5MwFtuQZCYLhY1qFE59KdDtTzA7bOoRHNJFNZeGcuY
	 ECmJf602SSxew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504EDECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650665332.5211.16768766351129900329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fee9437eb48c76b7efbaa37cfe1955d10108022e4d1e15bfb8dcf7ce764ff23
Date: Sun, 23 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666506653
