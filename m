Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C3C29A9
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F73C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673463087;
	bh=aoGvkspUtwj+w7PTe+b/XwQ42u85eyddNDiGlG+8cUQ=;
	h=To:Subject:From:Date:From;
	b=OfxCSy1ID/2w05yE62RmkKiLmZbbLwCU+SaU3s1iu7NV25Drx1/jvNc/pm6zG12hn
	 pO1B4ufjhE7ImuOkCX6+0dMEmvJvTedG8ha3mg2eA7rGBmeKtoe9fCHOKgGnGqaTIH
	 ZnunnCLUmH2uYkZq02xX3ILOzncyxYceclIjk764EgNNCSDw8pEa3gO1lNc5b3t2D7
	 MH8fRB0d5zOpWr/3+Rc4f0dclc1/abH/PjoxPoDBFBKH5htfqTjHcS9mu/dh3IfZMW
	 0uaRCa2d6+WqKLwd3AMEWB8X30YSTXFh+6///laLRTt7QdU8PfqPKUhEa0Jg19GA/j
	 RmjfKdPo7GzAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F973C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167346308744.9813.2763382814859888674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b38f35d72dd520386e3ccc058f3a730c16b6d5dbe5507c3fe7c173f142724a1
Date: Wed, 11 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673463087
