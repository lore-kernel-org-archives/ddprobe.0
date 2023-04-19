Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316E223A2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 06:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D19C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 06:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681884245;
	bh=biWAYEslFZSKm//GF6sRQSNnFn+hHux3WAQvGLRFpEI=;
	h=To:Subject:From:Date:From;
	b=EEpMF34L0s9h+yjnHHpt/EkQcPr9joF2yaaAhK0bzk2+RZxE6RsFT53rvcidlk8sX
	 V1qUVerXZcBoncaOlkQQuVxK/UdrXFxoPavh/lMl62Lkkkr4XcQdUxUKSDRlahxnrl
	 BeV3R8wRDDabThVfIGTyecUurPss+TJ6kCEDjyAIY77iPd03k/h7BX/CwIcMobvM7o
	 0vG6H/ny6j+5eWqIuOzRbRcUW+0IMkGHzG0F6zrv/IkwrRUCe1qZZxF1usaA2d6UtZ
	 U7Ebxyj0MkVOtn5gpR7jvR/HsHmeI5mfQz9UPhnRr5gKXzQ+1vChFjF0RCzSFztI1k
	 VdgLH3yUG5B7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F10C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 06:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168188424573.8768.5236360907409767042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90dd804ee9c1548efe1f1952dacfbc64c5f88cc7691a925c6ccf23d15b485755
Date: Wed, 19 Apr 2023 06:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681884245
