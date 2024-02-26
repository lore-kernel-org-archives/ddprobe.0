Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025BF320A
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708923497; cv=none; b=jnWxhs5IQi2LfNtQ2SNxAZDD3rywBF4Dmieq/+a9x0FoXkUrxFckpXxhdzWWiKhJiwpWFi1Fqr4kqqFoAgsoA7mPH8mG33SU8WEDhlFrseCkwoGL0HdB/C1/vaik3ZKLHBIHpzffwvtS8b2PH1Q7ow9XS6vm9Efl58fI9xhOzU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708923497; c=relaxed/simple;
	bh=rkrl3KomDRqWSF3XuMKIskLYzMdWvJvnRWA3zUhLbt8=;
	h=To:Subject:From:Message-Id:Date; b=dRB3g4ShBXQxhdiLAOg5W3/AemeNN0wq7ET+mbGW+TwD9YTawKnYehiWg9bI5UgbU5S+XfGJbaw6f/s/nccwHrTX9mKwR0Phz3/kJWD8lovyf4xAibiYPSMaSO2+I94MtfOhi0wOyy7tJk8NS5ceH4mbyEjEpI8NEqtIJMvKpZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGBtlnxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGBtlnxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5CCC433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708923496;
	bh=rkrl3KomDRqWSF3XuMKIskLYzMdWvJvnRWA3zUhLbt8=;
	h=To:Subject:From:Date:From;
	b=RGBtlnxvpHm6qzP8jcQSJg/u+iBqvKqFTxB0rgrwxSlGTPWTCnEoMHNQtuEnzb8tQ
	 0PmHYzOciZl/4uRGXGY2s2U2I1VeqARtkXYucViZH0xnvK5GfYLc6UGHFOk6rp0D1h
	 tnsW/rPn0LlgbndM3wVy0hP32ja1nu4RUn3jS2kj9EBXgjSP2X/lGctdO1H92jSQ9M
	 jAe+Uq3ezU5j/9oqGtAvXYR9PJ2EkJWizkw2W17DbWDTjb513gS83suE/f5o7qS73J
	 r2/qeziXCZXfqd8T8PmFBXgbZ7y3m8Pr0GCowF38LcjCaSHxZnnmC18Tx7uZajKC60
	 EthscM80ZL+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F6D9C5478C
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170892349638.8966.13653141667248180106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea18a52f903639fa150a0cb1ac6a8239f1a5ed3dd7ace4e6b327a03239e7f5cb
Date: Mon, 26 Feb 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708923496
