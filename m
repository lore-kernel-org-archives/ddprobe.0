Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6AC635
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745568594; cv=none; b=ZOu6SylCV0eK47AUvR5OaRNsaF80r7Ufoq4tDBPAbSIrW1S/vLni2XvWyUdJkLZUSm/Wx/Imlq9gVjPzAg/dTVR2oMCPYP8yRfREJtqAC1k5MNAoG1JjWugbFCauxs0Go6cZHvOruxAP4s1oEyAPBfk9UPnhkV5qu/oHq1bYdTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745568594; c=relaxed/simple;
	bh=hkvRevaF5qdrbaVoN23tGCw/aVZMkzbHx7iBLis7pHQ=;
	h=To:Subject:From:Message-Id:Date; b=mTdm+Zf6KGX7PP/4qUJ/nuxix0NKSJ/pLMVNrLFoW2FUB3pFq3LdGdWxPU4+HqE00vPDi3sxxzQ+Mssm/c2/pOg1xWgb/QGMdIdmBotIGuRK30rgXWfKYQbXO4cEdWk3VmioAhRaYzR3eClAQy4ReOcVvUxIyRRXr3BPFG6mQBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfpGmsjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfpGmsjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0DFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745568593;
	bh=hkvRevaF5qdrbaVoN23tGCw/aVZMkzbHx7iBLis7pHQ=;
	h=To:Subject:From:Date:From;
	b=QfpGmsjQbUuWqK3wPRDy46vTU4wVhyRowp5qEEW9MJq70CJtud7zh8+nxUl5c3ef5
	 4eqdfCInLaA4zCnh3exl6+2i1sr6AyNMxAk+qrQJ/28QQJRCZM1lzoXf9ZNIY/y43C
	 XaSexsG1S/RJLliuIYDoYeI/UFGYu5IZSKjCmWwsHAzaDFMypPD/1fqM/repAPC1vS
	 PiyPJV1SmC2jdJJmBDq6IPMf323OD11mjUwIYa45+wJNE660yRqyexHt0WnIHjuy68
	 T/69OUKwPRrzNKJLdhIhZZKL5/+CwaG8M7vMtH5UQXCl5k99W6R/uap+FSVbpk5L1B
	 D5i2QXXO90fKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA82C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556859357.23879.10730038247223652735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb1c166d75f5bc5887f35323a7060a757f9f2d653bfbe89fcf69a0084e0970a
Date: Fri, 25 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745568593
