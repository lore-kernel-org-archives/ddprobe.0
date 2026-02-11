Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DD334EEF4
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770837294; cv=none; b=jXah2NucbIkrzT7DahgTJ8WPuIoiwyqz/yfTsBTD/fVfUqz6bWUUbwAXuXVX+cCClZEUf09vEmFuuovuhqaxB+gbZXIDEztNTFo/J4XaVHtScK+q38V8+xVDMglbLWd7CVvziwCWv0VbCfuSz+ovRLrnbnbaALvcKcj5V6yqa8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770837294; c=relaxed/simple;
	bh=N3gAKZhgcfnaLiBoMufwBV2sEM3lh9w2aSJ8+76HrA4=;
	h=To:Subject:From:Message-Id:Date; b=m+2NvUuSyaJG5kUrzZiWJI5jtSAcfsKKJ014GJU5mv5YPvPBh1TVprLa4tiab2MWd6mQVU15kPaEvAdNKbdgJzYn7voGLg5IByg0PjH2CICfLnQJl4wlB6JgWjATTwAjed/qtQfRU/WOxpz/iJURtqmn8Ddgi/YDFTnWvIu9yPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvSgCY8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvSgCY8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE034C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770837294;
	bh=N3gAKZhgcfnaLiBoMufwBV2sEM3lh9w2aSJ8+76HrA4=;
	h=To:Subject:From:Date:From;
	b=fvSgCY8wIXCfp3lO/i5ZGvZtTcAypDh9ifsAbe5uQQpX1E24tc8nWC3AM0sIl+5B2
	 lFD2iNiFTVhU8zAzxv1u2Gu4fxuIPWzPWJzhTV61G3I+KJGMP2+2CHpJKFE6mXUXwK
	 68kYmUzPnmhBy3EcvHApfOWJhN2qQiEGvPPaaqh22TXQkBm7CZbQq/tKmbelYk/epc
	 rsMUKn6+1dnbDd7mIFLjy8QpYEJHV4YvFgqLlnrCqFGznzdGQ9CsQxB05ox+M0GrRt
	 HqSZrlKOzwSDCmFEyql86BthLss4C6aq+lZjc9P27FDT2Lyfuh+Alic/b/qYIwNGyn
	 CIGxh10rl3jfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F65ECD6E0
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083729377.11587.1918516857879751156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dbf961cc16d183142db675540c44a03e77651b6e4281f13108d56bb36d7603
Date: Wed, 11 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770837293
