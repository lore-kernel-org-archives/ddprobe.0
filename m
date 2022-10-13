Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B8320F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D14C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665649253;
	bh=SOgBAZvMUusLGpp4FL+MTL3eJi+Le/zyp9ioSml939g=;
	h=To:Subject:From:Date:From;
	b=o/or5sVwwjnniCwTjLS9s5kQpnKRwMiwN9Cy31cWSex31QexEbpq7U+MSMDO1UB2g
	 PkSNBXoXrr/fIh8guEXjKR+ak4GCZD83J8wC1aFKnTZIl0ONGoEvjGRZRoTs2QXQR3
	 UfRE4mCrxTWCwsG+XyfmWFp2+kN4ckdPI/NrF3UInrhtKK6+pKI/WxtOd8gqYjJY0v
	 tcSl6YJg2HmLtl9WHpvI6PgifBdcKDD5YvnTNahJo9WySCJpFh8FcexzXUiYa6WpuG
	 cV1rTGM22EnNSH8WNPQI7dvr3MS8fYW9VF+cfTB4pcYUvY/1u2ZwpwSIiKu/hGYwpU
	 sCmp0k57cKrjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5543DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564925334.16843.5531143897169355553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db42a052af7ddf574949cb090c17e976e2404827753038a6cb5cf7c4be38be60
Date: Thu, 13 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665649253
