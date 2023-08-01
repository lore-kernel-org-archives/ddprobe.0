Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517C9200A7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 09:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C5BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 09:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690883528;
	bh=0kj61OOJ0uQO0uW8ZYFZcCSNUXKSOiEa59UeKhHX5HA=;
	h=To:Subject:From:Date:From;
	b=m9/u77mD8jetIicwcup4usGl/AcN0nfuL7o9QYHouTMAzbfhBxhBqgAPpAlYAErs4
	 sh1afjB1b9pZfebl9hBerJWm/lhkkDgwk0On/A3f9y+8QKNBJgloikLckA/syA5XOh
	 93wKfEb/l0F970Jltpi5w7y4Or0tRqLJaJpJQZprSx0CytChzEBP5kUSA6a7BA2M21
	 gSCoXpbLmDq9ZM4jm5qJdX/N+Hvylgswk5oYq2kf4A7SaYOYFyit2i8RKBtIFdav2x
	 hjvGbqUlMKJ3wnSqZWkeKMcpO7+CYrECkQJMH0IvsvhmVCPTBWT5xU96ZXYLGJMFfq
	 epsM5z7ygzXxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9870C0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 09:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169088352868.7120.4604773331510360108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb3f3223d3e6f24fb63b2ddeb4c5eafe453ecc07b0c0f45655cff1af3615b4a
Date: Tue, 01 Aug 2023 09:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690883528
