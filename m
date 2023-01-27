Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534CC2F48
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06DCAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674831786;
	bh=b+rPYWCklKEXGIlvLHLf/QLcKjiY2b6gd4uMiXPd/kw=;
	h=To:Subject:From:Date:From;
	b=eJ5GRw+LyYx389CerRDN/ptPQ9Wo8FGAGvxTVNIvzpx8r7tCgx7MCUEkNoeF3cNoX
	 Ztk9n/P9QMTzg/rvgYjKgdp4GGJWReea/gtSe2r6ffUepFUjHLEDRxT0dirJJcxOda
	 lqbu0rtsabZfBsj5mVdXWJlFtfqSwDBNn1rICZQpj/AkFdWMwj7Z2U5kjOtXiy61BZ
	 0Jq9tdAT+SdMAHzGLSJRt6uVCMsz7aqA9Y9mqHLIgp2/WY7AWVAbubwWQV3UMsKRD7
	 y2y0nlUDfXva+IxQtYwfZavE7SQSKQZkpUjpb6A2Ns8lCay+Ebk4+ERnextmv3gV6L
	 k1OXb4rVqFwDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC1EDC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483178588.20356.6563692086525902498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75730865eeb715aab3cba73fe5515ab16ca46ae9ee7cbb45979035608901699d
Date: Fri, 27 Jan 2023 15:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674831785
