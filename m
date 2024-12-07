Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50B517E0
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733597753; cv=none; b=rB0xa4fAqx+z//5aVpB3btuJClxGtswJFh69FQnH5DK2ySGNbg7VQgENVUh3DFTnCFoKu69uJwEyl7bThwMhtw8DStLX+XokjmJm3sQ/2juJdRR5DAgYuPG3MRTOaZ9M7YDOADfH7mlcQG2vF/M4VoMerPsWZ0122zIXdY1TYcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733597753; c=relaxed/simple;
	bh=IM+9ynhYwx2MWFwXHnYUvfE27cdlyRj077s/1mQW6LM=;
	h=To:Subject:From:Message-Id:Date; b=nXHhvvLgSZ5HVeMXwC9RVZHDFWyJLRjvlSJq00nKyz8GOZf6/o6P3/T7kyzKLIqBKG/fSej0bEoUc9X29lNGiZSun407UFHyTyPL1kj9HK0RMlth8GPx6ub4wbffFrWNpRCpCdaRprG25l9eSTB2WzroYy91XZYzl9ZaUiR7GsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2G8SAF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2G8SAF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5104C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733597753;
	bh=IM+9ynhYwx2MWFwXHnYUvfE27cdlyRj077s/1mQW6LM=;
	h=To:Subject:From:Date:From;
	b=X2G8SAF9KUGjAXxc6tVZIUJ2OfV484XEXB01Yn/En/YbHY3ArqFo0+xH5pVHcQDx1
	 0U8rft3h1CkrOrBYeXDtjwjp9+DTkjv9LPJg37PGnv22rsMH16FBPLlyQPWKDYTGuL
	 wf7cQv9As1BaW6iJD2z+2OivsPpRmpEfY5Rcbj236MQnRtF0XXZrGkUTQKoS7Tfasx
	 BxyxAmzHXqVxfdv/URXa6cdkidzZ14SooRPb0R3vxqczc7cCBWjB/AuG+XyimzcwKf
	 eKMwN1SxFbkPzINaJJg0kIwZt2phfA6nfbaJrLWYQM+OG5IZKIa3NNEaLK+jsSdYpx
	 wYhBefAlK86dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD90E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173359775357.8523.5748636470515552108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6cceadc94c732fab33ca19a7fed08921e725043e84091d4202e8752bf16e5de
Date: Sat, 07 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733597753
