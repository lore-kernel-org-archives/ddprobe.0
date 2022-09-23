Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A7315AD
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EC6C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663908653;
	bh=8c0dliFYbr2PvCho9189f8UH6o5q7q2bbPa6FWtfr/4=;
	h=To:Subject:From:Date:From;
	b=Iu5FeSIcmd86SfhI3YdKbgPukjJ7FF3VfskdzEj8dEgeuz1O09A/vGlrnw7zetSjR
	 Zsoifw2WhlctDbvrR/Wzqdi4GKiP2hSQ/oNHNyyaZq2ZHVBRCqMCiuqVhtbz69+7Bs
	 9YQNzPbncK1OipzRTV4/hA75lo7MduXb/e2PJQFtBxeczK/IPyY4fTuST3UXBWYbZM
	 txYd0NCkJ7KynTowe5lilwyyysW0WpkfyWu4Ez3cwo9ADiQndi9VILg/Csoz8NqyLk
	 qBo900UeSFWzpU1rJ8JND2U2pL0zCoXRTxdTmwh2UQxK1I0VnW5XMm8VJvV/zO7jIY
	 kL00YCN4IIKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584FFECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390865335.8189.10733295122623709183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05db6ade6fbbf61b37d25753ac42e47ffe09b61e389ded3d3b8bae78c3d7a30
Date: Fri, 23 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663908653
