Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A90A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F5B9C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673118087;
	bh=6gfuUKdUrDtEveyxAwyYzXYhDCvu7FL8L+iQO1iHxUw=;
	h=To:Subject:From:Date:From;
	b=GkIn71pvOIYju5sNHkzoRy/rSp6AThOc+KeLGTQh1x3kStXcC/usBJhnlFA3rFiFv
	 iGtD9JzRjcrgaInTZfDKRBH0RY0AN5fSHbtHfSDq4Xtt2qKplCNGAW4YRncQ3wmi2U
	 MY5AKoevCaEHENgnnZPhworZxBpPB+0bXsIMDOo8YQZ8vwiwpp0DH5vOzxoIQwXgHy
	 nrZmlhxzV2lukSBnc5UspbqeRUs9e+gmwbiH2eFjpLPpRFA2AkBy/yVs/KdZD6NYEa
	 8j2lRNozYQQ/A1k7QXH+Zg3uDtOf5ci9jAb6mTwg7T/hoqWqbPXaExJnW3WO4t3+eJ
	 paGNjObqEUrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70223C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311808744.25807.17680663345481313904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37259c7a86b050f0a082f0b4292966fe96ceab5ad2177c2d33efcefa99772477
Date: Sat, 07 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673118087
