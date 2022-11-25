Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDED2F41
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5B7C433D7
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669417254;
	bh=XFOrlDhJzSH732NMzO5YGIvHLrgmEeau6J1diAhYOdM=;
	h=To:Subject:From:Date:From;
	b=aOFOtBsbByfAD2dN5xQ5BrB7nedRqWR47loVSnphizQIoLNuVzxE02RcbDTy1Civ3
	 MVx8oQvp+Hem4E1G1y63KNvotykDXk4kbyrCGAL3qyYxr3uggyHAqYBNhOQx3VKG5X
	 J1nSy51a7dwbwDN9Xdri/jhwMVjg/ePj6kYIokmiJZz0h4688fzJSXqY7aNF5cT+Uz
	 UgRnYkMd9U4nzeCq5XgfltJjsc3YVYRPL6QWwVvzv7N+rQQpp54KjWJ+9kqg8sdUOZ
	 3rCgVzyNXhqrkBVbLOlRqlWwQdntToBdc7XilJ9fFGE7W02H3RJHdpJBKuprAPtzA2
	 p7mn+hVQcdW7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59ECAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941725435.12420.790442191475772989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f1dbe5fd7a888c14b7b95774b51d02399acf0e4fa3ac6d9628584aa84c332e
Date: Fri, 25 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669417254
