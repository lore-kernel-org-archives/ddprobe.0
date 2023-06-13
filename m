Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5958F2915
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0F9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686648965;
	bh=BBBTAg3tDDjR+jCLzy+GMKCbUDRfr+kYkyv1DYrEJnc=;
	h=To:Subject:From:Date:From;
	b=dnzOkH9L4REQkIfhOpcHEyAoL4vfENK8HrinkNPoIA1uDJBgfmXAqKswi25GJ3IVB
	 +l8COyS1cu0ZDmBm/YS2Jzv0+YOiBb2BdqPp1YKMvzsLwMhPnqcF2ciqFRw0b4lI5c
	 vrV9ZwMkTsLPX69vR42K2AZhbp0axuSiCqEznEI+6TQpgx9OP6pR5L+4s3+2/kJUG7
	 ReW0WVz4fe99OYgdGCIU0h+xWUK4iO+2WhlucL5W5V5CPDzg02s+sdWzkqbM4OlQJU
	 nQ7h18C9c+gXxOcPPrhtJBnO95GoknfxQ2aq9a1lH0VFQGS1/AoZWcv+GyGWLTpmiB
	 icTHM/36lZM7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE112C88CB4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 09:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168664896576.14472.7118201898705965639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32366969996f8888b6f7148ee0d1e328e69a9e4171edeb2a0467c5d6a0555b37
Date: Tue, 13 Jun 2023 09:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686648965
