Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E572112
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 09:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C952AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 09:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694943308;
	bh=A9LmXsjzEg/MYRdLe9wkz5jyoeOioswxKRp2QzGg+JI=;
	h=To:Subject:From:Date:From;
	b=SxRVCMAkbUyuLdNxj7xmCQVg0Lg0WTg/OmpJM0pWNxoqpN/Ko4RO7D66enkprpuDn
	 gbzFdHhmUkayIhU7mwoQtli5RvaJFBpWiYyAkDzvu9zmjT5Y4rrFg8YeVYce+/lHRe
	 blIcyJE5To7Dn6T10A+pkmDHuBrfEfH38RHEBgQ3iLtIUOs8a23lycfwmvk3wvlQuZ
	 9BGvXytnCkLQ+TsuAJt4ymAW/eD5BfWFv1H/7rrY5DMnDa0rqn+s33L0iZdYLzrOUv
	 Wjhhot6ehAcCbJKUvUZGaDBbOd4xtk4FNHPe8ycNIwacJ8KMgI3dXJFRxWnAEqgKCi
	 q+LA4/cPkL18Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5824CD37B4
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 09:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169494330865.21175.6375302979725760988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7932f0f3b14bf684ca11e998efa9da84f29099389d47da8a7b81fdd5a9fe71
Date: Sun, 17 Sep 2023 09:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694943308
