Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B259A194
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69C0CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667095254;
	bh=5g14lrFbrsePD/H09CeROiuUm9n8in3te3SlZh8TbIs=;
	h=To:Subject:From:Date:From;
	b=mq0NTdvOYtdIFXpbcQlcOEPFdmRtIN/qbrhfmeFXBibBfTmbyXEhuVG3N4dDFAsps
	 I236H4hZ2ADXD+C3pxt4Hi++56AM/e99MwbjbQAWCKAxXLripL/i4nWwSHg36YmZrs
	 BPBOOXvL+JgQnM+HjYEmS/oUFKR+ojS4yjLRUaMayfC4N19soH20+olabSD79NvNH0
	 ySIkjf44xFP6v1AHzEXtxn4WABT69omdwzSxo9K/NF6BKVqQFFrloIjh+nw4kCR49H
	 GuSnRiqMlJtZeIZe7dazZHI1spDbRoLqIf4BTwQRkiwpBxzx894iSUpB/DboFY+xJc
	 YKChOv858dk6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC0EC433FE
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166709525431.14046.15423694607423499449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d31f783558de5cf08fb9202e18a9a81fd7dfa3486fdda3946c454ad67b82a3f
Date: Sun, 30 Oct 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667095254
