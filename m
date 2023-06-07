Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7250F7C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 02:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2D28C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 02:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686103326;
	bh=qGhRkOVLn4zsLZBt2+jL+G/G7ybvwFaRvo8w94G0AjE=;
	h=To:Subject:From:Date:From;
	b=IQxizIGcxnrm1o/OcVu8eaCzR2Qc2EbgFFlU7z2cQa9t4JKTyROzaAmvC34UifXYU
	 XhNniRV45RMhsNbU5x9EL5fNOJTgdU/RO+OQqQuEG3O5Cs8IU5kP8rcbOKRZk9EaWs
	 4tFk7vY8S7/S178VyOwQS4Ap4vygcW3SperPgiumE7Hi0WAZQ06MOdrPtZSSJlJ/8G
	 uxWMnRjwAEUxty127ZOgT0HmtH/bI0qW6k1Jy4Jr7yuljGt0aJjuYUVfa5qAH0If/Y
	 5u7qGxoau0mf//rQ5dujjrtsaVlhflhmAkBlJVf1v0mQQ4zL1AupuE3VVNrnRxPFdr
	 DHB4+jEC4ofSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8BEC7EE29
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 02:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168610332583.31934.6852357099164807897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221680703cf13fefca233c4fbebb565d4a9522550582ec84426d34422143d122
Date: Wed, 07 Jun 2023 02:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686103325
