Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A5C1360
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7D6C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671591087;
	bh=XnSWC4W+FVse/hemGuvh0JF/xNYWvB8UVu1HKxBUYO0=;
	h=To:Subject:From:Date:From;
	b=uG94talF+p7jQLQ2Qvwj7jXChHqksrdWuhFwYq/TMfNl41hCN51MKWw4vnUdIVw4L
	 Si0jdrUEFL4Vr1xbxLyVLEjF7gBkQ3RRB7FrtDYX1hUsskh+fc3xAMoHm8GWeBgQy2
	 ReB3WsmdQX5kdzqpF/c8YhGGNM5zAddv3VRxyWferpASr9Dw+qhsa5gH0EhGRlvwzu
	 Xw+RiX62ipkLe8rsCGjUibcytHscGYBx7Zus/OdTc2Nd3s+Y2WLghUnCvFBbcilzWn
	 4yCyUuasx3s2IPuz0WR9PtzxLKA2vqzluzOzYBzlSaRLZD8c0tFzFCSr2zafJrDARn
	 cF9Qjssa3fuBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63445C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167159108740.23449.1093172661477748187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1d29c761171e10ff9de13a0a701d12f06e360cda4a7aa3e24cd5ebe0c1ebec
Date: Wed, 21 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671591087
