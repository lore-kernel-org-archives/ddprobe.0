Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B004315A1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 07:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20BF8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 07:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689406869;
	bh=znn+KJBb0WCGMPQ+4uX0ghEhop6PbJFR6m7CF5Cl0I8=;
	h=To:Subject:From:Date:From;
	b=mGzq5R9Z9H6eMUv7RbvhFi+SGfthAmKHbcg8Ge4z4fLiLFHQiUtxntN5bP8eqhtFB
	 aVyX1Kttxidiz+WM9wka9zxNWC6aWYzl7GqQVbe3luCNUhZkvBx3UNPuvMNEr1QwM/
	 2c1nWp2izTNB3Kjsa0DdhLBOJrb/PtICp3B29Uy9LkzsiuF9WCEExmibYJsjAoFqdG
	 f6a+FbY5vkiBBDoqeRrN57vjqsF19JPcyD2VX8MwpFq+Xb5ebD570i9KqtM96l9rOg
	 cWJW5JIIw2WjaRJ87bozNw+hA3ziJpZvZVlvmGO6KLZEe7ZiszaS7fuaxuLgnZL+wP
	 fdaNfCcNza34Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02B80EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 07:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168940686889.16856.14509169129795225972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f96efa13553fcada7530d8c2ee69ea8db48ec571c5f03d02eceb7305ccc923
Date: Sat, 15 Jul 2023 07:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689406868
