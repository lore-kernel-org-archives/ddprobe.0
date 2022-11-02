Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD5E801
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC84C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667389854;
	bh=qp3uZW04Io8/EuuxJ8pd/cP84Ut/sE9jFqSoGUKnQSg=;
	h=To:Subject:From:Date:From;
	b=V1d8RORj8xlgnBAwJ5MKjS1EA9JUYLbh2rQEiqNxe4Fh9bK6z0z/mjif9YGLdecl3
	 SLKRoIsLVDohGYwSm4I+Wp8H3g4qKyKgpliLpwP5GLsCQnL84twk4nXhPTlDZIxoJM
	 iCst06eQxQFqPGv41Mat1DQS3Gx+z61n8ePr6xM3VZjocjXB/DTiofe3mJCuTaurl0
	 kwlS+lhdDkoADivVoLG6tMXRAzI/1Om6lACOhKl/ow6c7AyooLzMCzqtxbNGW472kv
	 ooD3z4uBZHCZCPwFUB/DqaQtZ1gySNREWaBuQE+pWl72vbuCk9nUsvqn04czKlXMnp
	 aHOivZpOx5d5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D7DC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166738985434.10316.2520730066569553360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3ae7e181cedda8286b76b3e239f84e896f9cbe7df785181f0295a08462d7c8
Date: Wed, 02 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667389854
