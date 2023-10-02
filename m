Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D472030C
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 23:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A80C433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 23:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696288568;
	bh=RB2pOp1vIN9jyb1iQ8EJR5rLUs+eO1n4oaGHjpH4O+Y=;
	h=To:Subject:From:Date:From;
	b=pdQv8y/p0PZVd/XCbX2f8quNvnO8nHpyL9KZlEKKfjHPMCfnEGgzDYOFN4RQezqUs
	 REeLiHt86bdKn0SKYu6E7TAOQ95mylKESNhVj3SoRF0HLa/lFrW8rnCj4YgpJ2R2yU
	 F2FH+aKfuOelNtQqCRckbsnXtp1Um2B4hFzLiVSVQFflo577d6ATgbwtAAiwzRkS85
	 9lOR8zi4vUKFpKAgkMR69RN+u5SgQLadoScwjwwCr1DE7aFUOp/XUcL9Rs14uUxKcT
	 yuleIP3QxeSsWvn8dmpnXD7Z1FS5v3lCWFJ2myUbpXLwjbAKqKAAc1dr7VyP6fZRUj
	 fvgtHxKfezbLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE1DE776D1
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 23:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169628856869.7986.7377234627288676907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cddcb5c7a61cd4f21a8ff77f337e592d92ba0d7beaea3dd15b51c22ed4f5d4
Date: Mon, 02 Oct 2023 23:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696288568
