Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D77E1854
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 10:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 024B6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 10:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689504069;
	bh=Bm3NJgHedXaKX3SNk07e8gZsR2y7ARpzVVs6+VMRQVw=;
	h=To:Subject:From:Date:From;
	b=l9cyZZt257Hq35Rp2gDkV5QMmKNP+x8bmotq7TXwJzpkZbr3BFYum5qIFIyymzAl9
	 jQ/5c8xAfMN6/PY+LcGwO0mDywXLdiUz1QDq/ujUCnTlE70DsnYv7xZbNUqJJ4jAIm
	 UZLtq2X7Sh355nmXOKpJ67ij1BlOf01tkIiA/fSL0eCkzVdu+ibvuRHomopZi3S6ew
	 Ib/+cKvymQi0k9xRvgShj0qITeaL2rbM4mpl9ZhB8t1dlKa4B7T/aOki/CR7u4hKEd
	 2CcnoszyqBd8ISK1aUmVAMU+k2e92XXGKPmZhY5OHnvA0n9Si4S1hbnWfdVLiZe8kg
	 oAD89KdxYAPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD78AEB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 10:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168950406886.27359.9810094106562637020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2538e4e55f97b4c1172f6dd3d39501cf9cf18f5942f2beee9982b0e101be44e7
Date: Sun, 16 Jul 2023 10:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689504068
