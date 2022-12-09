Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED287E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E8CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670626287;
	bh=K0tYaODU4cnnDprxFa/oUGzjsOVTZN8d5usQckJnSGQ=;
	h=To:Subject:From:Date:From;
	b=BI5A1oxSU+Nu+OP1ew8AXxJtWtBzvkmzcERa73LWOfAddIWEpjJuCbSZVOyThn3uB
	 dwQ4hOgUfMKuPr8t6j+u7NYNZ5Ui9nB1clOlvswopr7jRCJu8WGgv3Fwv5rps4lVZy
	 kjVwED7/Th38xzMMfNNZkUJQfuRJJmN31FM9sbpZSaqS0c9KdgKDmuZcJ0+c9CuPfQ
	 +SHxej5/KSpKyRFE4JwDzzZlbiqp5x41AYgWG6JrEjhu4iKK7unbwy5D4awD3QmJfO
	 zfKtY3IuHS+2ME5kZx5FozACNj91uSO/Inf021nXg/61RD+t/XTnO6nog+TEMUkGi6
	 JjzYLiFz9px0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FCB9C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062628738.28567.17438275171738040800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7650905c35cd8842f049d99419c0781b3b92a84a468905311afa5232bcf325
Date: Fri, 09 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670626287
