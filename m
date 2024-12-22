Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297AB8472
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734832554; cv=none; b=nBHbejc4ORm99qxt1QRhEJu5q9U4epXiPIdwTqXfRgwl1thsUh86nrp1cl14kVzAVRFUBRmncEzDNr1ISBwEtixpqsqX5I6cIeBRwbNrFE5vHvlhyX3DbqR6zQAIYXsCgSdnXqDSJOp3pRvtA+U2KbZPZHxFRKrTIx/YdzzVI6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734832554; c=relaxed/simple;
	bh=dgIpKd3adsn88cMKro8Z50jBu6LLPC8NZLSs1vE0Hp0=;
	h=To:Subject:From:Message-Id:Date; b=eu/jqwFZF6FaJ4t0Ubq3HLtYSBYLTwvXiexkBTlnqA+vaH+6eWyc4qnvb94muvvdnE6KfaMcqWdE7PUR15MDiWVfAtqkVAYG4t/Ke3tHEfVLc8G+wsN1Lb3p9mxSm5JUQ8kiFPhNegGqZyMAXywTS0++PgMBRbJ1Vzmho7O2P6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRBiBV9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRBiBV9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ABAC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734832553;
	bh=dgIpKd3adsn88cMKro8Z50jBu6LLPC8NZLSs1vE0Hp0=;
	h=To:Subject:From:Date:From;
	b=dRBiBV9LAckb1ccUW8lqxYp3e3lHA7X/CMCOhSPM4t+TI7vCkh+KHrLdDm4dFJzL7
	 b0XBVLm7/caASq9eWoM+HOEiEFS3qQeSB0XXOvKPTzX4LnyRw24YMbJ5rxFOycCvo2
	 waFllNSl85dbSW5hGUfxA4cyB0KwSRzoXD+UOtjmmFLeSobvpflqsnkVrI8TnPPxqs
	 CHJ4g/ZDnQQUlp+ZtxTG0090nZ+qvRwIH+BPpVdSLthLpztBTTC/vGvqYdEtHdG4mQ
	 hnj6rAg5Nw733FtJgZUTfrVLe5RICO8gu8HsUplefDF70PJLtDrVTrCuI2Fh/hKi7n
	 xkJfeDUVU4NDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E2E7718B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173483255359.24807.844174719979953110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414e0a67e4b2708041b33d0cf3ef83154b734d45e10374b7b60089628d8c6207
Date: Sun, 22 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734832553
