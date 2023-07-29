Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6098E816
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 16:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE379C433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690649528;
	bh=+qe4PuP1bt97pS0L/uG/v2XPV2zjL2GWLlKQ0W+q7VA=;
	h=To:Subject:From:Date:From;
	b=X4hRkecN2ahomxLw6kMSkKcN8eTfJWJkOceeO2sZTfUE7KJhDxcfWy6qUZBx8Z+RK
	 jakBLj1fXyA8568IogASoQiIFnoRwBPyFrV2Y0tafChDFxksp3eIEzXrAbQ4+FbzmM
	 qmjt6S6Ip4sRsPOryfgpwl7DfkQRymLJfthaqzXZl/5Rsr+EbZ4DxgIjEJafAo/2RN
	 etY+P1uR6/3oUZw1j+Ij2xFzdRuDr7sLIqVOcqfV9tWm/ZC1JFQVqnyfZHAfxmc8T2
	 OACFFJlo2HbmG4kCNLLm1wCIyLfkxrap8rNCLtnNj34jN0Eg3qjUnqhc8du1BMFO9w
	 rnK+ws7CRrQYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B7BC001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 16:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169064952871.32350.17166573085652401544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254ae7d3832ac1984b22db9375c82dcc2a0534ea39dd2612df82912f9f00c510
Date: Sat, 29 Jul 2023 16:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690649528
