Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E9B8C1A
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C3BC433F0
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671313887;
	bh=6ups+UXU0yaFM/mcA3NDmRgmCE5EPZvxL9B2pUQLU6A=;
	h=To:Subject:From:Date:From;
	b=WFMbtbLxS3ZgltLKRUJGBJiN+1WA6qoDfVVkkzMxx4i3EqYRUoJb/guLBe+psO0lE
	 sPu+M6HkygYxy4mSDc7Jd3pYr+p8cP+SpMAODZLcjBhMibwSazDe2/9KJXYsn3hPvV
	 osM9mh0dVy+ASqm0b6qZxepTDz2q7VtuVR9jU+rD/hRzZcKNzTauW3jAOGVpHBwn7W
	 gJUC80zWtdeyLAito9MlFBz456XKJHlIglpkQamZk1fNez7ugEX3lcD+EU59s+8/hK
	 XDGNn+g3Kn8/e1bWrZ0whpvBHlXOAnV3d7d7mLnF2XxWNxGiTgtOYCXxwFWT1Jq/t9
	 3U8Ibs9eerjNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A308C4167B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167131388742.12200.2013289512838629548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54e18a09c96e18d99d331ea9301ecebd01ed27ba7e0605d3b67bf86bc7f7785
Date: Sat, 17 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671313887
