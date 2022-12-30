Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15971110
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8889CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672361487;
	bh=1QGT9gzUQb0bqNu3j8Z32pqdr9C3+gwHlRkojgYAYM8=;
	h=To:Subject:From:Date:From;
	b=DqUiXdp6h8w6PA6uAUNfqeKLnB5/4h3mwA+PgNXiNnkH+CQ7QJDummcI8mIA/NQkT
	 rMXWMG/63+FqrbYDqMQPGsy9CwmFQOAoSuLYOizH43JHtz75MXYgiJcBx6Zn9dW/Rp
	 AXDToGTa2WkO5Rmez+bQDw962HG52ufFLB7hxIrgjtOOn0UXazluKb3B0FcT04hz4b
	 Cuv8V1vwSGnYMYjq1kG9ngmusmMk8e88Nt/qhLm2kwDebroUr8Z4OzjAES5iyRKOhE
	 /KLg2gQJ25T8CGGHfgDjm5sGysns/f8CqdS+U7/aYRAyinJvdh8jdT6x1DdvJiu9G5
	 0EuKq0rRzLOUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691BBC3DA7A
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236148741.7754.18161221794418936560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1729268297f6f9afe2feb3072d72b2685c4469bea806c912acf96bc482474088
Date: Fri, 30 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672361487
