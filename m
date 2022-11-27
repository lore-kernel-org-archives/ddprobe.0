Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C958219B
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 781FFC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669541454;
	bh=fygigNC+gWYPQYMvzKj2LaxzwC3XtGEZ5sLDPeArNOw=;
	h=To:Subject:From:Date:From;
	b=lD2T21fNFCin95vXwJsAszAZ9v8gCj3dALBESxZ0Cd14cj7A0ynxmiMwzQgS9of/z
	 TlKVqGERZfL7dwAyFBrTWSmNTiirlQrgDSSiZj6J9PxVh8yVOXd3F1l1pw6oiAiD5P
	 JF9WWRo96rdthjD+tzxyGn1JeMZZ+rKKcgcpZeDy2pXlnhC335uQNeKbw7VVOTJUpG
	 mYEuEphp699YF+btFpPwKNxnPzwQFCDBcrAfsr0wv+yd0dZARhLpRLvELvD+bQbtbH
	 TtujgY1urNQ+QzRVsYjUVLTP3oRLqwrQS2oB6V03YWER0Eq5NF8xRd0yf9i7U5SD8Z
	 OCvVlK3kDPeFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A12CC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954145433.11474.1904657841998924441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ba7a4395a53c1f70ca871723b7d811e1b8f5aef4c5372a0b70f88c45c19579
Date: Sun, 27 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669541454
