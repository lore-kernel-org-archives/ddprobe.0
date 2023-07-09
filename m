Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2F31FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7A5C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688896028;
	bh=1f+U/YXv8AF/xUtx2myUrViqO+sUA0B8bZW7sSIZtAw=;
	h=To:Subject:From:Date:From;
	b=L9eYr0YzAGr079+mfz/7Mqef3iql2PG+3fjWGq9ARVZ55863akRVnY5vlhZmhCN+c
	 h60K/6ymE76ImV5j7IxxDojEunnhEXiISKeGj48LWKxL59HesmCFGRl5UFu4Xd/Y8k
	 6jlZGPkzWK4uBdYtmk75NElaF/MB9k6Ei4WKiNAosffTR8eCeclrH6VO0cOMkIoZbC
	 TjeeKap2xSsGoqX+yf8m5/h63uCzPKkrpIxmNK7F69Ad1L1kkhE9PDAtoiyiGXrBJG
	 C9u6djX4vMb++l6LqzsgKJh3cxhEMpn4zU49fzCcrFc805QKfteuZW3P+ZtVqlKnxc
	 7odBXCdCFf+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F01EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889602870.13453.8282295567391049314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09684279dc9bc7d3150f71fcb4d3fe6f7ed77a83dda2fc18012736691668b072
Date: Sun, 09 Jul 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688896028
