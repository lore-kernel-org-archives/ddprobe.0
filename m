Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1185B1FD3
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70DFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692951248;
	bh=rHOi++wdVsfKwWP6wz39k+S9TqBSIETRiuFjKMGgxUU=;
	h=To:Subject:From:Date:From;
	b=u897UoLR/jqPAk4LHANu4bWFuvHL4U2+HsQZfF76Wwh8ErFbY1/OgQ5Rfbqp7QFGO
	 HNXOZlL0Zw1CxEfrVDLQiIV/LvZNZE1aIBmF1HhPpvAB5ZhBounT+SmEfNDGaw21nG
	 m8qf+1knED9+jOguzZYaHESxKevmClBN8ChWNnXDPpx78jQaXGbSDlYDvt3mqw5/jX
	 IyWi7oRUVQ8WXjWpql0hHxrCpvB8loZ4GTUU54GVuLwW6rMWSANnz/JSeSiTXRI9TI
	 thWTxFRMesPzTqdUY2B9igJFxe09ndWoshXlJwEI+Hy4aYMJhx0f8R6Q24VSPK5Ao/
	 VURnRGUmXqUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD705C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169295124868.3028.4562267752188973537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2133279a6fb473494da0965633952becaa4760ab7e4bbb14f8bbd2b0d63d48f2
Date: Fri, 25 Aug 2023 08:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692951248
