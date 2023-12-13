Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D58335F10
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRYNd+nF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7104DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702485496;
	bh=CmpIkwryAfqJj6cYMbDuBXQ4Vi1rEBaYtGSJ7OuWwmk=;
	h=To:Subject:From:Date:From;
	b=RRYNd+nFszQS663LA0tO2JrTWzlx9d1QwyC+AExq8OSZUfqMiWKMCM5nLFJ0mZwF7
	 HZn0NtXRdLTdakF6IU57d0/tFWwF1fuZVu84tPWoikIBvh38tPJMEJnPWhn2pjAHnH
	 ADcV3MzIKnWOH4i1DpxLQT1caoyV4HIGLPZhd1IQDJzXR9CcVi89RK1aNeseiw5kgG
	 ygWSpEwT7XuKH4s3ohr6jvq4SgZkEoiRJvNlHlFFOe3b5N0sdMseskK1l85xHGlpB/
	 7S+POuYNanQ6T6xCySP3rdsbp00CnDYvauPB3i1oQMq47yCBL9U38DORJIKj57AF20
	 6SPq5n3ErJyHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF52C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170248549636.29712.92885733920006406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0895ae19974891539ff56d37af927fb215b64af1c55ca36366a6ec376628a73
Date: Wed, 13 Dec 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702485496
