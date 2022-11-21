Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E567E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72597C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668993054;
	bh=bB/7RUXZ5TZbD0SmCf3HcVifPkrtc7gC4cooHQNDbrk=;
	h=To:Subject:From:Date:From;
	b=ThfozT4rxwBd0FQ+LWVjy7YUdAPf2V+1q0lrT3rl0kiJ7olLG2FTlT+tEb2IVPrKA
	 AK3hEVU4OWrAgK0NMXu79vSg2IeiHmZm4N2jlcdrInNIn+nm8g60w7BO4wu0RR/rES
	 fpvqhTFOPbzqBhrv5OX4zzjlCxpTMGKH0CoNLgnrkxgiouG2EEh4rVb7ssCHJ+t4z7
	 rAk+nrr36xfOJpH89JW/7615ML31hV3bRdnWBzfzQrKLq360YORArt/zSYpWQbj/3B
	 BMmZXYmGl1cF/gCMe2iAxZ4TjJLTGxBkHyILHbMQcKiNrn9Mxrgx1v2roE2gGP+Eaw
	 yFrj9YTYTtehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B00C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899305432.32613.5163490834906237965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685850a290665e3af5625d4f4ff1b6c58b311334dbd9f4bf0231fd2b961f8027
Date: Mon, 21 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668993054
