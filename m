Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4984C7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 07:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF802C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 07:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682148605;
	bh=5Y+UXeqhCXv/Y3kaZimlFum63Xl3UquYLxOFvZzwHgo=;
	h=To:Subject:From:Date:From;
	b=FHPHgoxwRXQL+h/IxfpaKlE2uocNsDR0eQ9tfJpmc4zGGJBLOhfLQnQJBhjNPGRcH
	 SPi/eqccHuK91KEEg4i6dHzph3KKngPf4ayK0cFevTH0x6tOE7PacwiJiYyongJvcb
	 HGM6C4ti8V2wVfRFfmXf+6E5ri4JWHIexoP0WDbpSJr4Bj34cOIy8gRIOhD+SnqNOe
	 vXGKUUP/TKlgkfOstGWq2dMKuKrUiOmKOg8kFlKKtXJ20NAbt1q59pdUgaa+dOyTQS
	 X+4O7xstXdM4zmXdx0SKzVwPWhyaMEevF/tl18PLCYIOfVPK1KZZcKH54o+jlKSm6x
	 cwlss8XbWG4nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15E0C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 07:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168214860575.735.7825464961128645034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3321101b702a201dae507d6b70e90e051b19cc4cb11a334e26d9e9a41268be
Date: Sat, 22 Apr 2023 07:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682148605
