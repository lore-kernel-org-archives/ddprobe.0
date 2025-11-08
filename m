Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457B214A4F0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762615794; cv=none; b=UGFla4Y2PzWGLFE5eh+O7RndScUNExwb2Q6ctzdU4/5VEI1YsOtQN4mRVKKGIZ0KQTcmPqVc1NHQzVDEI4a1TxsPaE5CuLRyzKWzTzB9688qwi3UdzgE4Hglj/zID5BJydwUKmcwYDtw4TLZ71tjF1uxT+Zvi849KhcNcgnzBE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762615794; c=relaxed/simple;
	bh=o7HsN4+l0dbhrDBytshN3u7EHI2X6GTNeBlJ6pRP1SM=;
	h=To:Subject:From:Message-Id:Date; b=IQ9din2efnH8zTOtxTxOkXciZKf0CdHsrmwdqEbNNLyLnAHESr6MtpjP3pPy+lh+mzlI159en6l/+W1y09X0iriI/NAfNL7tXBGhc3Tuv49mkba8uAOTrIKP0t/vz1zGdLwhX1R2DxLmxHNTfUtLuovUg4pIYmqMLoBUuhIJzwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bta+fqD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bta+fqD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB328C19421
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762615793;
	bh=o7HsN4+l0dbhrDBytshN3u7EHI2X6GTNeBlJ6pRP1SM=;
	h=To:Subject:From:Date:From;
	b=Bta+fqD/tT+zwVjZ6y9SVbA6nrVkA4rrgNaEUMwE5AC+Of/UkX1Z7fgsfD1Unkfiw
	 y40YzK4rEZt6UapbuapMIGCLyYVRrtE7lG1BaqnzMcY8vv8pw5KtPDEPTbyToEh+NU
	 KmmBKQmFelfVMS4G2yGfsgypW2fCX7Y6Ls6TPi/ytrPE0TO4B3QTzXv3Perl09YMkF
	 htQuqcRjfJrcALV5rlVWTPmsxS/B5Dwssjq+ZgmYNn3rIQUeoIevQHjKarqaEAWInr
	 Pw8jkU9QpN7g+ValUbpPOIKH7ItsuGVKwPtN8oyGwKAV8U9wkT+EhkpFV/U2zoBelA
	 g0Wbuuo6vJnqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C9DCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261579357.22572.3939308904101655356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234d3b7caf8c73005a96255e5eeb67de70ccd305143c9723d1a797e1bf79f1df
Date: Sat, 08 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762615793
