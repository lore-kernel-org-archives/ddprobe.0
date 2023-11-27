Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A51A38
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEiUz/07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFCEC433C9
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701046696;
	bh=WFg62D/r2x0+1L0IuFwV+q9+ebL+xyYIDCcCz9ttIYk=;
	h=To:Subject:From:Date:From;
	b=cEiUz/07V8IKwU3+Lo7q4P0y/o3zBV3VQT51TdFsolQBdZMdkfftjtE5QanOAVXxQ
	 q2/lmyDwUm+Liu0s79LIIWehFB7NiCWD3j4O1P1BtVn3oYnMhpEg+zW599RmxDitaH
	 8S4Rahjr4k0D+6uPGF95Uf97vB7NVWs9FXoq1I+KjbI8GMMkHf9l0mvWjm4sMsTfb+
	 mEqWgPrwBUqzb5wDTANUrscjisU7L5OsfnrzKoB477aE9Wu4oZQ7ebWlXGznqvmrId
	 1RZeUkIsT/LI2JgrCybOMy0t8yVubZ8/yo0BP0K3q/IgQoVO+EUaPEWwd3yH5/vQ+K
	 Ld0h9ifkXeGLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD9CC07CB1
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170104669638.21842.7229175035952028212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346cff0627c92dc6a438b41f072ee2752d517993e0ca8b5ad6c97485ca969d24
Date: Mon, 27 Nov 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701046696
