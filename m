Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D99F5381
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F25C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677758165;
	bh=z2L3LwyT3W5LyYZBp4ICszHik9mjkeHCui2sqsYw4y8=;
	h=To:Subject:From:Date:From;
	b=Vj0lgMrJGtYZMyUjtklUKykRD34SLRUPBomQx7aIIUfsl0VKwvSTtbThX2+00B/Q6
	 03uWu9MRO8zC/b1oMT58hL243ZXZsAT6k4Y3lh6tKskur0SiwCLM6U11oiJxeejcqQ
	 DrY8ELdsYC2tG2VzaQtenRUunQw/lTYa1zpROa5rjffFlSlVDpEeVL66OQz5y+CZcJ
	 nKVi6zal2Hh6FjjFpQ7g4lpCzNI5f8zs4ohntUkVS527+qxfX7xPFIFrD8hMUS0M7g
	 zz2hLQ8sGH6lwhrmpiL8LYmdR3Elfj7a14hOEmMkFFAPFSgs+kitMXOfZ1W2SlqXM4
	 onp/wJTBJv6zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0171C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167775816577.21681.6818862266082074075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a483d2382d849e3b7b8f84967f14c8ce2dceedc58b1231df45e15fdd1428ca9
Date: Thu, 02 Mar 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677758165
