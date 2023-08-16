Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69288D2F1
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA40C433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692229988;
	bh=aLsseDAkCTbfKpTvHU1y+wnZb1xVVUv4K0jQheWnuck=;
	h=To:Subject:From:Date:From;
	b=BvqAa+M5GOgXvvbS+6qbUvpE51GbmVfUHGEbqRsDL7FRjsLYTQdIoxQ7hmy31OBoh
	 XFqlLLt6rmKeRV4bfm8imhWZljb6nf3DVJ/pcWpTqQ85i8z9Dxniv5yXHi5AqYFr4p
	 h/2B34v3wK8TQ9ousmDJDIlf41acHoBtjsH6DzfJ+IYNnZhQnX6sqp4P7WhBn8/snK
	 Ef9GSUtKA1V3iz1+mXqZHWQtfMswFsRu4JYWPC3ZAX8kE+DySnn/fVmUbW6nBQeEXj
	 Lh8vjel1D+3Q4Le5MX5bLVkwgRCBnAsP44eWMNetPEBlchqwzpp9XWsN2e/tOPo6mE
	 yk3Yx+y7ZvLMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD2EC2FC02
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169222998877.23551.17051899040689699233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c42aa30dbc8ded429ef9926e452960ac5822b34784e3e2ff973251f3cf2fd3
Date: Wed, 16 Aug 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692229988
