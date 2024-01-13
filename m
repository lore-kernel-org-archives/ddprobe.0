Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB021F606
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkK9wr83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A287C433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705156096;
	bh=JnWN9HwZvVvQQ2r4Wnj4qU9M8MgdaMKlVhkqIuJhHlY=;
	h=To:Subject:From:Date:From;
	b=lkK9wr83/uyolkZHqJ4GbGhmDmShAg45/RX8ZRp6Wy6D6lLVhqa7hwLdGeV69g+0T
	 cdgsKirjSxG2z86R8b39LcsOM86msg3wqf1vRCSMpiX3DFaM9JMElOWvuqtGWiCokX
	 HI41weBDRPqNiZeQSe/r/K5HXFgOMnLtDuHPag+tdHKTf4xFN+ejErbuTs7T+Z6e2F
	 25dcueo1+JnbT2wKQLCr3UKub6E6fBKC3xlJkUqHb93pAf378obuyhSDoAE5f2pC9z
	 E+UISfMJP3kC92wdvCudC0xPVkwqyV5mOQ1JkRkrIg8ZfOe+3U5ZRqHFlRXnawgDO/
	 arrOKAeOaSVRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E845C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170515609640.28983.13352273109081546989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab56d0c1ed17a1441e197ea28d6afe9601f2d7980b143da28c5dcca1f86dcc7b
Date: Sat, 13 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705156096
