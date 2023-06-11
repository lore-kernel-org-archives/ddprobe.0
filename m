Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7018E10F5
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 02:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA2BAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 02:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686451325;
	bh=0PT9UFVv52YHTgPEi5kQZ+Qob5s1x5VLoot8mWXa5jc=;
	h=To:Subject:From:Date:From;
	b=upanIqJpaX4IKVlFJnPHN0/M1K5QvvBHXdvy8Z5MM2MP9jXaXFSFtjBOtLNmn2bG1
	 3X6MGeSlM0xdChC50hsozH0v426e0nOxHeFPxuZZvkNE2HUTg7efqLIA2l1vCnG5Bk
	 fOk1ESZcHOzZJ2IH97moBf3mqWcJaVjz3R5sj9vPL3AGA+oJDxxJfTfRYHO5iFASr6
	 VvyO7TRy87hzkqOtwFO2VI6DVoaq7/ePcljBArn+Jl2g2ulItJPdFk/z7mg05SHYt3
	 E02w5vQtsoi17H3wV2wEW8gJaO8fEXbG2P7TQG0ttmDIw8BRyqS01SXdW1rjOGdEbw
	 D2/PXVlwF6GGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BBCC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 02:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168645132579.7153.16409885075124572551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9574b674afa07cf9e13ca854e32e2af994b9d4d71ebdbb3932a53d6284e1b7
Date: Sun, 11 Jun 2023 02:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686451325
