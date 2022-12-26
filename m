Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93017E3
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9022EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672047687;
	bh=BEOPfbCipmRk948258Lo7nA2TsN2GoLEKo1b5tBEMxw=;
	h=To:Subject:From:Date:From;
	b=REz3Vkrk7fpc9GflnR2Mj0gYs6gGSTfPi2rO7oSEIrPKnrOd6IOiPc5wl1xYbWfwm
	 OV4JlK6V6buFcq2MpUNxP8lKeRTCN4Xjck/E7Qbp9wTNGH20jfgXeManYIVoEmoUUg
	 k2Vgz3sphNyV8vzt703kEGmVKHCr2vDR6xU5thp5Y0qKNbagi8h7c7y1lscufGZSyC
	 tBnz+4AItfDfYQZGvisV48swujUSty1KcxpCwugy0ar004c+pi7XipCJ8WkIvqeP6A
	 igQN1p+b7M4ibxwjR/PzFsIi92cKdyyL0urrZGC7i38u5nv8fOaLuJe+Ui7kWZKrJI
	 Y0Dc6fccQaxDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA44C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167204768744.25165.17421620451037202667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58e0d6f39f32bf6fa11b342db0c3bfa2f1337719d7c5351ac8c090b5cbeaf65
Date: Mon, 26 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672047687
