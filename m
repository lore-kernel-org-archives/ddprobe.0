Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA9D2629D
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759933794; cv=none; b=UvoEDXSqYXUOEOJTnWSX6ATdI2eStW41vIjvyuhBJYPC6afSWEjGWO7ds2eDAAsyEpvRm4yam8tsYhFZtAr9eJWvDLoOsHSvi5+O4kVeWEWYQcb5OoUtYqQwlYLdr71R0T6JKF+yTiA6Ev53PL5FrzbotsQoHYfvxNtTS0yW8D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759933794; c=relaxed/simple;
	bh=uTnXXC9KnMDdObXULwQtVUxSXu5gGSrh6KUrsBjhRuI=;
	h=To:Subject:From:Message-Id:Date; b=J7HB2x6upZTAKrekJKrSashs5ZBPXRX12Xs0pbo9EjzRwR9nClY1ueRbDo9ci8Dw1DLjLgUCzCKrEBXvs2zivlW+WE83+sH+O2kiLGucmhgyN/BOf3H4SOE9PlOpdyVucCq1Z3xOgi31CzVvZeCZGhuJKkYHf2tRvDq84cmco4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IphTBh+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IphTBh+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D7AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759933793;
	bh=uTnXXC9KnMDdObXULwQtVUxSXu5gGSrh6KUrsBjhRuI=;
	h=To:Subject:From:Date:From;
	b=IphTBh+TihSKTvQc6rZYr4XL5/+G6Rnk3t8M+HYEMBzu33B2QHA3FnkvQ/GILEEQ5
	 LCN/NOW7vKpCwDICw+wv9THFW9NRpeqaHK0D3hfDB2ipPrpboSpvTr4FxOQQvZhQ9W
	 fxUAIWjtfp3geEjqkvYGdXgZUJ4jTmdsEket1pvV4PXdf8AI3HI+li5x17Xo9KzukI
	 AP55UfPaCczGiAH4kdgAgh/tBlXjTEjDZvi1jBUh/KqclIrCrMYvqgsf3EYOv+YFm0
	 KIjUBf8L0cQKyRVRR/JZh6hzc4mki7T2M4YwJ+VJqg+IrGj6eOC6eSUMWb8S1hG0Ty
	 hRudH3kT9nfCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E1CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993379357.11767.4760865421658868739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe5cf8516f000d62879919f4ae052952ac6131f2acae45538ae42323e27fa86
Date: Wed, 08 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759933793
