Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36355622
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 03:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8698C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 03:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679889125;
	bh=SndJAGQJcr4Yk3EUPYihamTuxSzG9O1BdYBfKpqRL4M=;
	h=To:Subject:From:Date:From;
	b=IYfwTBC+0xNHWIoJCuCUk6O9Hk9F0V/zyGgAOj53v2Snz0X8N5TfNzhppFGGlUZ8j
	 62q0NKLaCvsdcLKc0gVdeQ6B+2gdNq1E6YSt+RjfHkTOQl4h7K7lDSbcbsfROQTcy2
	 SaBcM2WAALeHAse9/Wjt+5x3+9S+Y6ijLc32qezkmILSWX6cBjq4tf+krT+5z6GION
	 mv+MGXufkLftWF4gH3oTJffMofWVWqnJWohYLQdIOtGR92oqL/vlf8DPmGwyn4VjWS
	 W4RWQ9LlU7rJYgDqSUJZKG7FzH/bioqIAnaMdGhf3zYBid/cYA+JhsJ16l/ZBVmaCs
	 Jb4yXO2wIvypA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BF4C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 03:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167988912572.30784.3887798672843084079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17d0daf94b8ff899f4407e2dc58f0ab82a0191b0cf577ab6835b2ddce96a86a
Date: Mon, 27 Mar 2023 03:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679889125
