Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7AD15BE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7560EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668702654;
	bh=pW5guRuD3ur9w/lbjhtVhOYPqV5ljYy67ICmtFvYoTw=;
	h=To:Subject:From:Date:From;
	b=lyUB1cpMWwAJo9iF77F6VJFo4yeYS82m2Q0lzo6fgaFQKQNQLy05UEhnhILdt0ofz
	 qiJu60IHg8dNGeGBxmVJwEA+BJNIwXI+p/ChoRe9xpBYXGRuLIbbgv2b6pT0aUlHYP
	 ImGUWa6wQ73pizEzdP/t+QG8qiE9A5d/4VMtEeyXgzWJYFc54Rh9WdOeRfrRBUTf9e
	 6aIUG5ApPQlSmEbIieTrcPPXfGU+IxqIFlUcDodi+DFI/EIj0V0Hn2z0c1rwvnMWgn
	 TN/Wh8AdN0eT9b7uZ0Unbno5Xif6hUeZ3kdFy+esDMOsQXmZP+ajjP5lPbuwo2QmsF
	 llOGhq7Krwj1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51240C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870265432.8805.15292533026784741206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a902ac58b8e08a25bb0e9754a4d4ceb7b0d57d59ca0ac2ea259e87123c6ee7
Date: Thu, 17 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668702654
