Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70743D61
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE56C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663155053;
	bh=lxpDjhybQt8VY0OiTPyOsW+K5mKC5Mmhek5RXZ6KvYc=;
	h=To:Subject:From:Date:From;
	b=A85EriPuES4e4Yq0OvbuPF+D1PIocV28xZ/BJRQrdz1NGnsgUWlp+KqGOi7R20agu
	 F7dqzhvHB4cTgYnA8oEywVHv/NGnMXlrE0CkXsQmQOIMJkQc7dlDcWd9KaBc6XgTYv
	 J8oG2dYxu0YKtG8RxHbZOXA7IU3cJKh/5THq0osf2KRY9+Rvf+bs7LZO/wPeMTxCTP
	 65hZhdO+z0rKZjs8s5i5jGKPf4JY6FegDFqTAzgvM4Mime2u6f7nK0GmpImQjtmMxm
	 g0iJpwNXDDg4CM+GkxCSN+ODbwug0pBCi2niVDXpk6cAXlbOJuArCrevwgUu+BuP0L
	 ZXZADZaTD8MNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560DEECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166315505334.19851.4808638079516218739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806ad3619dcb10aa645ad9032ac764166d205f95e1935dc2d89b20cf314793c1
Date: Wed, 14 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663155053
