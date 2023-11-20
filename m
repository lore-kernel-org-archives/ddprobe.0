Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EED2184F
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y14lyw1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C912C433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700443096;
	bh=TvVkeqbSJ2KvzwshfKmlWuc9As18IRxrxGq2BjQMR2I=;
	h=To:Subject:From:Date:From;
	b=Y14lyw1RRJzItIXcPTUiwE4NGF82puy7ibA/lOlUYNoli0fK5CbMiCKjCYXyztzbB
	 4WxjKBlZUKfPKpdcwdfK4S+j0OiTYDA82u0fSvVnm8V6eOJ5WYTKQlxOW0Uw2MvVfM
	 TA2hFZZtmj1qM6RA3oZXlZXMxKNAg/MdJWKvvlxzt3jQSUk2JMngTfmoqkAKGPJwht
	 EHfI2+yhMScV87L6n5+gM+SVFgdRojMDmmDaQj8NU49pOlTNnh2/+wkSU1q6Hky7O7
	 pu9Jpf7Dt0/8qXbrU5j2odeqbDb9vRQ6w33nf+nU1/GPWvtCSJOk9gp9Wo72CFJ62B
	 HQBUXLUTwSQhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73952C54E76
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170044309646.2842.5956521087781232862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4d1e312c1ae5ad3098a29126ee6c3b39a99b8d5b6cb551549a0d090aa25e31
Date: Mon, 20 Nov 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700443096
