Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0256441A
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63C60C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663962653;
	bh=qc4b53aOK4nIRIeH28nT70cXGZJ0oE1joay4EB5kc0g=;
	h=To:Subject:From:Date:From;
	b=Y+ZUeYiU8xEEdQ+FbtxiywQVYjc7M3JfY1IjQpk148VGQN4uKV5eG9/22K3/wvsOY
	 w5ai2hTRCbaemGrKoy9xVD10zKV4dPX5XQGN9JM1ekX86TxOithOXxwZljqIomP4P6
	 ReEt6Dzei66zSrvPsfCQgai8Fb4rYK6odz4Oz3PIUkhGMqJkVUeHFvcXrfkZ9txs0q
	 sEI075/dBpiGfN9fmuxA2jOHOLZ91GkGSIiCS3MlLueonIZYKoYnqzEO0+RS4ob80J
	 LxKWy2eK+z/U7qiH+TcSqoGmLgOnme8SjqAiHakICAWnEE072Myuvflk8HujOVTj3g
	 I15h36qwIZciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA86C07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396265331.24252.3699780901227307283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d6628d35bd42d734d1166272ba07b393a58c9a84b1c3ab14c54f597601d910
Date: Fri, 23 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663962653
