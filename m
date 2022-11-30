Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7441BA51
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65711C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669845654;
	bh=LdOfzQLRk71+OMSXxjcN/rY1aunyXsy0A1Al88a0nSg=;
	h=To:Subject:From:Date:From;
	b=fhsffzRO60Y30+NBSRckThpzpsYdw6omRzWoQpVPFDY/n3CjERXzMOHVMVaSi2vCf
	 BPtxq1Rw92UOiW6HgFkhM3X/lV0Pkhx+KYHXMwNJ8ebPbTNcaRQdxiS3rJula3Ow38
	 PC32wHX9/+m1XB0ZKib+OWlXIeCT5JW81b72vFMnVmgIVlF09E6b/e/5t+sRZuuZFN
	 yJj2WEsBOt6y0R77rZcG6swufmOQzWyAeDJ5obIO/epKQZ4yJ3s6UJfjv1s00mFtGD
	 nmkddbQ5XuOuDv1uVOpetHhYPbIlObDi/QgZR4nxgp0Q21d5hK7wlSc5T+gjHHb8R/
	 EpMFyAyw9TgyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F30BC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984565431.3997.14514986661339719025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47b8f921974808454d72824f17214f5b3e75a38c65d65be985c32b688013faf
Date: Wed, 30 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669845654
