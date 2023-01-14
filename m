Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE768320D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97383C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673728287;
	bh=XD3252DY481qH3r1Mqy/SL2Zp03liN84fDO6nlrAiRQ=;
	h=To:Subject:From:Date:From;
	b=QcVbxbUHpXX8ueFBPe6xrZ2HmlO7Ef6DfuN7INyoK0qJMMs4gXgc5R67+knkIG5L1
	 Ff2tj5FE6zTYETVguwgY94Xhh5Uq2hYP5k3c9HUdHUCjAR/kJgKWXxCVKtRbVmo9v/
	 TAnkfhFijuFaIeOddvvJlCl4PkhUomYi+AzBP1hGdtRnJgEjNd7/a++TEw2kweaIav
	 VvGeUv4PxJ5kGXxpl1RZW/KedbT1zVC8N0BRdGyTKDnISiJfrnoadpG0Hr/d8DZaf+
	 S5Zk/+af9D4hijiB3cj8Aah241Jv4Mlyt5tao5UA6XMrqeKnapdAT1hZdMdCDuKAoY
	 LcvwJVbAloltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74FF4C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372828746.19974.11316825350350066425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b86aa610e93afd0277466767c644334bc5128ba4bb45f306543e7da62890ce0
Date: Sat, 14 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673728287
