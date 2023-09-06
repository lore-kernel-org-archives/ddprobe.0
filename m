Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB1BEC8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 07:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC274C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 07:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693986848;
	bh=+KGJcGILWnjRLx4jXWkx9eNvoneoLV+9F+FeaVO55Ns=;
	h=To:Subject:From:Date:From;
	b=ZTQNOZ77d+tzaPPYiBlJ6RW+56FV/Nyw7qJLzRTEuW4FXf4SXPnOTvCdiRIhWVnz9
	 Z1UYwxf4rcvBRTjI7AoZAuuLMHkjdrUzxA194MEHVr6ub9POHd30Umjz7Upx+PhB11
	 sMqkEGI90o5h7GxY0zYu8BC+jKXfi1RGyp0Jl7s0kJsIqsFb/qFi3rLhTbKvNNFWky
	 Mk0p3m1mhq2n++mc6lznBKV3BuMPyW2UceW/sF0bJtLWzHxDi2w7yyB2/05vLSkTxn
	 Ir0RgRbd05zxNYyKzTn9TzOBHTmfd3zIZh/cJPFP1sFbpKlyX4jdbw0t1I4TiwbO53
	 zPIlB+FA0DThw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC8FEB8FA5
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 07:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169398684869.13619.1103025791024111904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4e1e527d5fc07d27a63ec6d6ced42e0dca0a3ebcdd9d65f3ef72a148fc4de6
Date: Wed, 06 Sep 2023 07:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693986848
