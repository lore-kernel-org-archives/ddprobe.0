Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68167BA40
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 22:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34FCC433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 22:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690496528;
	bh=WY78M67cKMzIrUvayag+y0bKNvgZdLBdmDrnL+i0VUE=;
	h=To:Subject:From:Date:From;
	b=u7CttzxW1swAdKCxWtBrtjcXhlQLCJQKlB7JbS9XIj1pOwN3JX1jd3Ylag0tMByyW
	 1x2mkBzDRM/vUNE9E0xXKqhdeRlcrlnw0l/brV35i+6SFEdNMdbLQeSmb9S6ojQYsp
	 /51flETLfj+EAgBgdI2ae9l4MuwXl2vcf05jR4KqSQE/4OX5vDBthkx4Wg+ZPXDBjM
	 gFEcUijkz4oD3w9BiVRvpExiFzPx5MwluW7LIJrpEob1YGtp60WXhSWeieEUtimWmJ
	 dfTsX+OUg10JlAa6ALMsTuJ1D3wRv9/zx3lxzS//hoQzX75YB+NzSnzHV3k1EfcVrP
	 cw35aBY82EmvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC525EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 22:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169049652869.14021.6346593486394489684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b59489cab3f1583dc9763cd3c2803e2af41d5dbba54b090ffcc4534e67cc9b
Date: Thu, 27 Jul 2023 22:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690496528
