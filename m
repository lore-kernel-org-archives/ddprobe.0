Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F03B3E47B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762739994; cv=none; b=sHjPqR9fnwfXOElld34kIJJoUgipovuOdyl91bXlEJvkMAONWHH/DQ+GJGjDvtvWXfZ8Pyv85afRLaF0oGPQbfoZHhXE8KC343zoZXDC0CECJX/WlsVfBK8ddPCrSvbr/Z87xcw2Wca5jtSVFatNmkyrQIrokg9UgbGUguyT2H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762739994; c=relaxed/simple;
	bh=iWV7FUmTw3iY7Yi/JoE2f9CVmQC0RSBOOKy5xi3k4us=;
	h=To:Subject:From:Message-Id:Date; b=HJhoQNIjTX1m9CryjjIVCb4378YrR68YEG7b5uDuC2UQo6s1Y8ppF0N6t3l6ByADKmK4trnbty/8ZGwTNKeR82jKt/F84m6G/J6GaQo9HkR2m7crhWOMH7sUZl6LxqoERqx0rGYrBQQURFlrQld6n7wIbJ+aR6+AXnPFHUU7XDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GItGxz5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GItGxz5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6687C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762739993;
	bh=iWV7FUmTw3iY7Yi/JoE2f9CVmQC0RSBOOKy5xi3k4us=;
	h=To:Subject:From:Date:From;
	b=GItGxz5wzyEvgkFp4fx+BUPpasLix6EvmqtBYgDQhbecqI7thgNUlska3XoLLKea5
	 6MWGSRv+8lk63eNFYD4+49M1l7QgQeWjshGUTl6vNm8eR/R2ShCo8Rq99lk7YOYVyY
	 XKU2EbtNb+6BsDdcK+tKBamWzcJwjL8frG2Hq/kzxYQrh0122YNuiIDkilKw2Q9Wes
	 EptvnrXnLZbo1hv8DzBPE93BvhcTuKT7ebf0RlqebCSQ1+PAAjH8YjARxZnkzcrZzD
	 3mM+LaPkCwz87TCxjHj7J9v3QLjxJxIrLVf2TzBUVjdT3Go4q6QhSZI2nJhsyOneXF
	 mekrP/crsE+RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A967CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273999360.25655.2477340296592078304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36bbee9ef360cd41d725ebddee1ef98c4d501702ceb27b7b67125225fe8aa2c4
Date: Mon, 10 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762739993
