Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3ABB3D64
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89E74C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673287287;
	bh=jqWVXM+GTW8VIclXIdhzMuaO4ofnWAg+EBuSYZv5/E4=;
	h=To:Subject:From:Date:From;
	b=JBzd0CjHiA13iN3Q4u13bZ+OolFYwW1oaQ9B0/z4TNC6H81eTQ8k7mvUI0+jrKRPT
	 oKOyx7Tqot3Caz+oUg0VGkCe9CHJTd8gCtFkLTonGV/hw5RLIFnZTE2yrJ8XfWY45q
	 967p0JCtUXuxIlYA3EusnaeEwkn+cjoAPYRnWkdtEDDEyMS3vVnpd+ErUAa/3X+2hn
	 m9Y2T6CyemgTHOgE7Gj4jzDk98+o/RA8gfJLsL08NHz1SfDY6pibwauejtaTQjDziG
	 lzfyIvT2+kVBeGt/6Ei3RBH5NQLr4aIGjxCiatK7HFm3yu0s2kEd2dnyYRsEwX79M0
	 9eZ6KQrr85LmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63587C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328728739.12036.2119244648897761466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec801d3f27f1288566307336487c74af131815eb7c5903f14248166029ee05c
Date: Mon, 09 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673287287
