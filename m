Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03DC6AB6
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800C1C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673527287;
	bh=vdme98h//eaaMO36TpsCNfpby3D1aUcZFfKvYAk1ByM=;
	h=To:Subject:From:Date:From;
	b=U7ZNkoIgsTlYNeyMdIKU3A5zE6NX8xT+UZ7H/dHGOOL8vQsPLu8Y5YIUVXcS6utVJ
	 cMR/Hg/RL6diKz+rjhVHec5FqHkWOXl0F8mm11I5bxKQthZCx5F0Xrzrrg7CoAPFxJ
	 JEalJciac3lEIvLmw+U36E8hWSC3HGYJv4ACd97vZF/9eKZeBjmm8oJmmmVzHNKxCj
	 iOqAsYMIdYX1OWtXcgFWoJ7tWUOvCpTDCK6rozpJkkCDB+JY0+oLL/mcgz7FRgPkXU
	 gcgg10ujCP2sdgp5tF9ZVY3rFpBAJXv1Slyj9GLGTd3m894eFUsTL/pFDjIIm7f7+S
	 0JNEVXKaQVa7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67265C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167352728740.19863.14127224736598074387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25fe8a48d9aa8dd1a61c6d7924cec6f917b9c9e7f441f6a06c5bcb4478abd413
Date: Thu, 12 Jan 2023 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673527287
