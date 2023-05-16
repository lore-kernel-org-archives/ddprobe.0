Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E54034CF9
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B1FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684252385;
	bh=dBag55kgD8E1nZsmP1+Izu845MlsTrJTgQpSkhpYhe8=;
	h=To:Subject:From:Date:From;
	b=GoM+XFyiflLbNKllEuqLWgMhkRZMOySn8tHtrz6yRxCJLwobh+PQ/zOjpbzwgRvJd
	 w9SZUlLzlwFzWwL3ldhzyLcIZln0rVeY6yR+WpAxz285LrIQXcMdZgw6C7JyToL7jV
	 7hsuIiLXcGxRbbD5crC/bp4SMeq81VMDpAiarFTTdYQJkfpNbq/sk+MUCVY7clqFad
	 TL7fbZBv5hDQSoox0gH1WeuAnmbJM72KbU1UIIatAaEGw6Qo8VHdOq874hfzx+e11d
	 7WZg0FQMRthYJzUfHPRZlxw/9ByIjcX2qqujz3fftWm/ROg4wsqwDhujLMj1tBUEQf
	 VJkocJo6az85w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8783C7EE2A
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168425238581.4722.4713339220356240130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fe20bebe73af48bc6f96832bceb429e812432cd94aae3d1f808067342e1b02
Date: Tue, 16 May 2023 15:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684252385
