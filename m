Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523641FA5
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 15:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9FC0C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 15:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680967865;
	bh=Fss7TAye8rTnRg4xbR8rxKoLFXC81iYXycTyy6KzBjE=;
	h=To:Subject:From:Date:From;
	b=pdxWKHxVbWvxYsE3KeUzuybg14ZHlL7owMi1fFYy8mJeBr8/lLsSyGsptNBQ4s1pZ
	 xV5uHdPSxbRTqs9hnXAcEmynnmLKkc6ENKKiopK1xToQbCU8K0SJYBkhIJjrLbhCmX
	 Yc8+ws1Xpz9yw68Ku6NdDKfqIwa9SM0xjUK0HdzpJBnzTa9oaBmyGz0B7hJbQh1AfM
	 NIt80/jYF7WFqJloUDP7oLV0Qu9foDh8k2Qa26/758UZ9JIV8L+sanFoMp2lgzIdAM
	 VgyXBVqUqC0bgBEER0hn/Q/RuzUXcu0GtKmC00c542rFkwqoMW3BAnQkPX/HA9Ifnn
	 IVd+PEVNJQWxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1B2C77B6C
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 15:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168096786583.12871.13599288277412191730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a1ebc2aa2e7fd6857c2a0a7c1838848327dc8cf66ee535c4ed2f5d57c66659
Date: Sat, 08 Apr 2023 15:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680967865
