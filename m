Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341AEAFFB
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 23:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFE7C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 23:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680911465;
	bh=sa5utR/75UCBRdDeFLIWmBontamaW6CT9DAmnNRU/EM=;
	h=To:Subject:From:Date:From;
	b=aeue82+5dZQ/jFr22hPjkpXUhEztd/Z1jiMeFQyRQfI5xuyBEUjqLvjA/bTtKBY2N
	 Smofj2PcnPH50E5nBAHTLV9r106XE214TRgjW/xRF+7BwyZ7Z6FrL/OACYgctlkNWl
	 1bh47upkGiPRUe49nM+UsKb51v7JtYfthbML7a55Crh6XD4tc05V5vWZphCXBrg3CV
	 tpVcSzDNul0zD/8ZdwfpvSqfKZRy80XFQ/VjYmMgDIQzN/gfSAAprkf6xzexaRx5WH
	 9bNdr2mYrkt/y9V9A98nRUZd5N0KpbOABB372KKCjiAAz9GGt5RRcnBisqw8sqfMzW
	 g79ttiVqWsanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0067C76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 23:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168091146577.25893.3336791368222348892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493dac454f709704e417e0c4d37704aa98f3d7102d59c936b6ae980b78bda1ee
Date: Fri, 07 Apr 2023 23:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680911465
