Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91ECD29A0
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67BAFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666629053;
	bh=Rat9+OnNvfTLkD5mG83eiZpQeuuNIVK8oYr9E4RIj48=;
	h=To:Subject:From:Date:From;
	b=ni9ufxKzgAGgHGe+uz4cGiIwNkeJWqk/bdDv6NUUHVZD45iRUWxN0u6T2rsoVPb5h
	 VBgSgmaBEwDw2iztJhMLSY1oD+SqKVJT321+37Jb2Z+GlFjWKPU4LCLjwepTapKfXQ
	 npxQfI/Lr1Fi6YyN5Lx2tawk7SLCLmBSnzkozsXxgSpkTha3hRFyHgdOfULjN+jUd3
	 O0rMHFfcVvt1LCwFU0LyTMRUpkLAuYny1vrqw4fzgdlgrSDwtyK46Glnnp34LHyX2Q
	 7Ws7SOU7rxP4O0xF4PMA4RjrIeB8nkffImwTB7wr73R/W7md5VACB4cScfviLl562A
	 5gp9Ae8bqbUQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5394DC38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166662905333.7830.4099525868882903045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b236fbfb6441116199252dc8f29d4b4d5b2a55d7d2f7090a91ca0a8ca080aa8
Date: Mon, 24 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666629053
