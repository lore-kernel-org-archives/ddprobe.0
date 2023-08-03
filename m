Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609A61F937
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 17:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C4AC433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 17:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691084528;
	bh=klDRu7wDe1wVqqmzddSnVRsEDaLfMrdPkgeGwic9pC8=;
	h=To:Subject:From:Date:From;
	b=kTyF6j3T6WOrc2KCUvXFWHtk9HMPglaYXqsAXjY7yKGeTARfqoIq+gYUFKrX6EP9K
	 idreU3UsrEqmwO10iUPs9BxIWTDmeWosuHkYBqlz9IMUOhuApXzLiqVMk4NWinzlrv
	 8BcaMVURyXk4+zG1qeZX67J97zWEZ4krfOcWGbTd1gy3ZecIUvIfGwL/elDf0Pk4s2
	 XAa7LT5I2sNyf1iT3HaljTYmZGXbpok5QcUs8tXuF7CNrvOxIYH8kEvGhqrxd0VzKk
	 6bWMiu3idNQjZjMqrnRIOEkUqiW9wv/r9or/gohnP5TJmW7YUeIk2fz684w1TlpchD
	 I4PMMs/iB+8WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FD8EB64DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 17:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169108452868.9829.6836211728501431571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c24645118d77f0a918161db38eb63b9756d9ae6ec417bc4d8af5d8918061cdf
Date: Thu, 03 Aug 2023 17:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691084528
