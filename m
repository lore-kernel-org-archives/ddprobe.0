Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BA7385D82
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779544954; cv=none; b=UUMnZ4w9VAnokKkiNPB5Z6vCiumlpF/NkfxwEfe0Dh5tS0T+fR8PDgvYvoUVHZfARl+t3vrU0y2vKNG/LPAVe9LSjqveUavers91DJmZCvrMdQZFEtUi/OMle8t7rbbGtYUeSIHSfCr2IEgJyJjmXTb3urd9+1J1D+CYh+vaUe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779544954; c=relaxed/simple;
	bh=7bKAuoezNtb/dgdvZfCaGbL1MiQC+vqoiuTsl4H3GAM=;
	h=To:Subject:From:Message-Id:Date; b=Dont6Hixj+kI3ikwuecbExEHONk8X+SBnnoqLtrMflKQS9Hw4ifqLdfwSaue/IhmCBkRHESb6uUgeU/TMgSSIjdP7f+pP7lhhGvGbghONmmZPAQYZnlJDaRaK/D0L70fAhNhQ6hhtfr6LvZ7uUXD/N7Srqel3K7ZJtDZPGwmJZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iN1547mT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iN1547mT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF904C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779544953;
	bh=7bKAuoezNtb/dgdvZfCaGbL1MiQC+vqoiuTsl4H3GAM=;
	h=To:Subject:From:Date:From;
	b=iN1547mT1U4TAtNOrw0fGQ5SEDYtHjAqPmeyex3iSgY+FjtCmYWIcRbCh6kaBiKhT
	 kmJVwSPTbcwVCWguPv5EAjRVrhln0z2NUu5/dDQbPdo5C3/BPYRmUJcZ/s2g+edC2w
	 chrZ2KVBq2f1LLnclmldfoQ7r3tMqSwXCieYfYLRxRC5pPqvbp9wzVNkMYrKpWg2Zs
	 I8K/JU/bIfiVwrBPE+DOB48uT6PVJr+XI4s3qfGASKmCc2M88JTiZaHiXqdokp4zBG
	 /oBurO2EwkLE56vCORbNeBnrok1KJovKd+BqU149FHZSUMpRxHW/xO4jk/pzBLQAOY
	 OSS93CMLbhItg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83CCCD5BBF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954495368.2634.12974993186659372417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ec00e1a88ad647fa4513f77eafee74fc151772a3ee44471ce2ab822b74e071
Date: Sat, 23 May 2026 14:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779544953
