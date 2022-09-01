Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE4FA3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB6DC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662020453;
	bh=6EqH/1CTkgUQRm65xnkjShrNx6Si0bU0eg+h2sPopEM=;
	h=To:Subject:From:Date:From;
	b=BOAUKhPk4KPE+DtIy0JoKjHxI/H+mBryPyZPShcerN/sajpBDZEjASntIau5BCocH
	 Oq/p9lbKEBvLkjZLO+HAvEXGdph6pdMQHP6FaBwYXgX//og3qVKQdOsAA0y0iEw4mN
	 yBTbsXZEzy3kii6FUG8qar3xJ52znFEICTDkNNwL2bKJTwu3neBMQFGnTmrZgeiCdK
	 7V7j6mLkHB4Ry4h2wkDUlQiyQNlEyqeWEexUi2jbO0z+s+ygFvwbEORtXdpSWVnXoh
	 I4peMPGJEjFTil2sYc2kCNfd+RBOkK5oaUfGya0m/ivi5ro4cr5IhC/rKBbknxM8AW
	 xagcgh/BFU5jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F9AECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166202045334.18677.15480489378194849534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb15b960eb85d4c13e8b81ff0952a43d24f3c1beb13f80052c9b37fdb497fc5
Date: Thu, 01 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662020453
