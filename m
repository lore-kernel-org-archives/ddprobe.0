Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0617CE
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 12:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7750C433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 12:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681130525;
	bh=BWDoKmWt2puwPs5vzPtHDFabHz9iWSfpcQW//TfHY4A=;
	h=To:Subject:From:Date:From;
	b=mWRvGaikbUa9+Rf5cUjQO37RG1GeSvtrqhVDp02wJEKVp2mLuA7TAVrYfFn7AIZ9/
	 Wk+JFMuA+r7KnyEZN1hqqE/SsL6Ad3L+EvEoiK79Kp9F2qdTx2pGeb8BOvvf2OzOrR
	 YlpgnqwHAPT95lETMh5h5rDiYoLgZ6X+bj8MN2PZLpFZpgT0VdWMdUx59oy0DqsBz1
	 XU0rTA8oXRxp/NVv9NPw82SBdaXkbqr11Qml7YFLrYKS0kD/NQpAlYslz7oLggz7KK
	 fjzn/gBjUVS1Q7wBMGlhXRcr2Qevv91rB19YfQi/YuJgEHZHwukrat7IGVbHN8nhEb
	 usCd+jdI3y7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF511C77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 12:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168113052575.9582.6998306014740520605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec45e5d56d7a1c5fa97e87ef06bb7fadc8c422510c95db7e5846fe16b4c5abb2
Date: Mon, 10 Apr 2023 12:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681130525
