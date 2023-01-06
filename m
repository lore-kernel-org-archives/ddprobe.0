Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CC96FBE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85102C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673018487;
	bh=9Rje1fIO0wKDy7qXEVeFjv6mnE1xL+Xn5xw6ClnnG/U=;
	h=To:Subject:From:Date:From;
	b=NjtSJriuCTO5pRk4FRxSQSM3zmEClYlqwDiMjITZrOhHDtcqXvEq3+W7FvK59YC9Q
	 JmKWVDZeln9TLSp8VvD+xf25hK9NSUgHBWi6S5DNRlzx9+lOthbeCnqKhC2QGXsF3/
	 gedjj0i2/6Omf/m5uh7rJQYyx2XTSRhXJXuFYQq/u0idgjhQTVnOov+REyt8R1BzcY
	 suODRvBCvUgF/m/0dIcfsb/AWZqDZUg4l+QZiqzGxwRG26ZJJ7Ze9OVXFB5L7jXlFg
	 /IZKqRGNCoVVNJwjj2XTM8OtlI2RuA8LoiA/uo0yjeQZG/4tfdxfaQJE5bb3SXHnOL
	 RgjkCVCNALSaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67656C4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301848741.29791.13654883963699863282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a965d585c4b4e9dcb2c4150e980da7672fb88b307f76646eeee74b143fe11196
Date: Fri, 06 Jan 2023 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673018487
