Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4048428E8
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 08:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2420C4339B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 08:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679559545;
	bh=sJBFfJKhopPqw6SSg+97TYSYYfkw0gBmJVCD0Wfebrc=;
	h=To:Subject:From:Date:From;
	b=UCg6BhayvrhZEy++N2pK/f30RZMYj1sVIcG9oEBsHOJgNBGQnKxaWFQxxeW4NrJGr
	 ZhUeVrX3VDUQtINC4J3ZCXfqpg+jeTOyX0ExbTHhmUpRt7jcNS4HQi1I+cy/excbHM
	 HUhHE9PL9pIWTXS7d+iXlHk0b5OkW8rb8TIa+d/GsSAPUUZQbTunpPRprFUkGaBnSb
	 Mt71uxuRBW/Td2y2Qz0w5685xKDw/noAaLGzCDXNaycWzL8tWBElo6jjmooSeVAhpt
	 ncvgwQtlLOmyBU7vmG8/TZsMJWB5YNg/WjG/v+eYhZfA2SyYsaQsHWsiDRCnVJYTd1
	 haNlvSDgpWwzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E45C6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 08:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167955954581.732.18153792999265857924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05407810f606699504dbf4a982ea368711235dda86293f549addd5f44af7908
Date: Thu, 23 Mar 2023 08:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679559545
