Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF9B5380
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDy4wdZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 817B2C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701402496;
	bh=CFqnfx2PRYzBzumnsUqLjmqZ5J3DB5nGhnQ+TsLdRd4=;
	h=To:Subject:From:Date:From;
	b=vDy4wdZl6YiAT6YWUeJqYv6ZCoJHfqW9QFbw67Cid+Rjqs9nV2SuEfXiEus8/Wj+c
	 8hZENxe4b4gMHhvX854m2VeHdc29YmvJurZ17cdHjKWx79KkDy9V9jv7JE+JnU3VQr
	 MK04t7HBNp9vUzv506LpxSj/rAjy41IYB4DWS8gnAelUqNclVBYf0jGJjQCBsFEQRW
	 XbQjJXW6HtdoluCSGerFzfPE/vsknaDfrOzMA7GwXnf/fOtgyqpFk4bkxWHOdGciGt
	 D5n6AoNA+brnRkWNzwUr+OgoJeH9hvlQ570kuhdapqxkHbUp3Ca1Ed//k5DbJkE1Pa
	 JOVx6BrrEqtNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618B0C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170140249639.10531.684312174568651230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea1e639115750c413f8a9bb95bdd6a6e2c20f10b4ab793c69d585b2d9932397
Date: Fri, 01 Dec 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701402496
