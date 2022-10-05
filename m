Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFDF2F34
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 670EAC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664977853;
	bh=G7smTgcogd6fp1S1HUJN9N6RbAaFrfsW/8weY6NF1VU=;
	h=To:Subject:From:Date:From;
	b=BpQTd2l5JMgV5zbqIi6AGjdH4eHyfuquwxSSNTwHjDqBnca7B62b6RMCksn9KU7sS
	 kXaV+OUV9QrWCeNXOKo9UBOVFC6UMMX7JHVnFTHGTFrsX2RzTn0sy83avbJJl/jAEZ
	 ENGUCjk/8eRABEXQPWInGd9z1YjOluy/QtBd5zsL4YS/WjByXVs5tFqROBnZspDe6y
	 Zl5UzEqomXM+7P6N+HumlDifdrS2ZKQoyW6UaVm3/DBGl+7EfD6bAGh1E7M8mzjhRu
	 gxPduRkm3RDHs7KmTI/7YN9W6e8h/zsKwWgv+B0gTpzxiSeUgCqhmCIZMyhI4D9D6i
	 svMRRwxaSyTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50179C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497785331.32437.8719956133686651016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eddcf87cd9efaeb5dd85a443714451487f920ccbb0ebb81a75c72037ded91c5
Date: Wed, 05 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664977853
