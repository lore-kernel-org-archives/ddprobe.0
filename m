Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D767B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EA9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672014087;
	bh=ldV65pfl2PMrqNOxxV33xr5NXqaidFPUgphd2OJxgUM=;
	h=To:Subject:From:Date:From;
	b=ofX44c1r2z2znFoYVjwLs4tNyu5OFKcdl+/ReetRm+T6GwR4mIiTpHKM7zewGrl+X
	 qXYEIQDwDgR1R0pbhUrR0V48W8TfAPOYvWxTp6zGrvkyBQcWVfbM4cOklHWQfEmX6E
	 vKYYlq0TvS4wedQWfBYEOSz17Vc5ohRroJ6ywF5nN+F9BzyrsHiAZZPEnynjkhygxD
	 hk331JIGccqZUkq5ZkAvESW+v0TuXD3bDnZd2Yj8eM0cCr1B/zuBixZOKWWUvZXrgQ
	 ALx+pQjFDOtFbI+Bbs9kLp1aLB4UCCksrKAHhho/NFCcweYVJjZdf8nt3S8rEjxw8V
	 Rko+UJpJ8ogtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A90C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167201408740.9662.6293705121956853776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb9bd7c6e099b0cea27dec0be439c8b71cdf83f790d41980d2a13663dd69e0a
Date: Mon, 26 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672014087
