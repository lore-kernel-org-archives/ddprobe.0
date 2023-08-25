Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B376E57D
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 21:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B50C433C9
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692999848;
	bh=/RdcBvHpF7LiRRg+eMlk7HOsokydccTuW9WmU+FUpYk=;
	h=To:Subject:From:Date:From;
	b=UHj4eqrtlBqMbIZvTGDQtH3/x+TVZw5u582qSXwhyRn2Jjz3/Zb8hr118gsg6dPdJ
	 c8dW3x22GX44dgeug8KGiVZHg2gqXh9r/OETnOgP6QIGZpPm7/+oPShrf8fBl9oGHy
	 q/TmjDc0WbDeoyfhnId5d3d7M1y2HmX4jvoAE7B9MjvFOn5HVeowCheKGlVx9Qp+Sq
	 IoK1RaqqfAs3MjqV1RWIuKzu+CPhYe72bjKdBHHNQdPIqRnp6/qcABfRtKo8k7W3VS
	 0Ckmm8/slGi7TSDobRNIjBtdlOV1cnauoW5Ro2FtgXwln/9d/KZ7cpqDy5fKKu4Stz
	 HXgbSl4zVBcQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10FAC7EE2C
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 21:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169299984871.23461.4530975037427798085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b34550d63a879402a041acbffb821ce1594db365dd117be5f904ad1243acffd
Date: Fri, 25 Aug 2023 21:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692999848
