Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2472595
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4037C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687374788;
	bh=moQ6nll4e10/xu+bJDBx2gPWGPYM43ct2xaB+v37pwM=;
	h=To:Subject:From:Date:From;
	b=EAcdPGbQwTlVLm7n1NcLnA0/ym7IIDjau4SbQ66bDrCUQcEYqcnJlqxemBjxf8r4i
	 xNz9P4vvOfsQm0IZQqQ2S7+j6y/MVdaTP9ByiPhERP0bWfDYtblKKzedCIIZcpAvoK
	 V90bp7q1aRf/ur1da298MBkMJ1SfZXCUNCN12FiG0GCCi60v+N9UXr/4nBMIjjCLE8
	 f18AoJgbkTDRPtGUrRYUZRP4XK62kj/08j6G5q+g6N0IeOc/HuTiAt3ebW+h3FaLAO
	 NFd32w9guvVlS8sEKl9GTxs610okLFVUGnhthtU1dkVOpGoONyS9GzaEif0m4XcAKo
	 DI0Y/6p7b+POw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72AFEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168737478880.27772.12155035764792117006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a1c2f444b532d1cabdcda06540beb020279037a75bd919d48abc4f2fe608da
Date: Wed, 21 Jun 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687374788
