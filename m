Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BCE3769E7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780952674; cv=none; b=TS1bO/y/ZKrCVIHMvvi9FZKyjz2UiRhciZsQjzSfPMb/KD9+tS1F77ZI1A6jJx9w1uRlUjQ+oVAJ/5frgbD4Yu2OQ9KHX3Lg3gkKPYUxfLRzc0oi4SEwaksaX1be5ZLdiYzteD0C6ZupPtH1ZVJjujughe9hDJ21eXfT9VCLlD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780952674; c=relaxed/simple;
	bh=gCQt20H0agfoxGReXBCa/iq/4Tmk8NSUGlesGCZn+MI=;
	h=To:Subject:From:Message-Id:Date; b=XVzy4+7UryfjJBzGvwh0hsWOWYZL1I9lVKy6kPRfMySk7UmQUU+vu4aJl727QeetpLFscT9J+r/bq17uM9FtdLSToLJYmeLTUQtGS6rL5pje2s9Br/xSlek+gnRd3qU5SY/nMb4xQXgTTcjcF3Avkl3cnzcJr1NvZxo7n47j9vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEGCOI3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEGCOI3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B192EC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780952673;
	bh=gCQt20H0agfoxGReXBCa/iq/4Tmk8NSUGlesGCZn+MI=;
	h=To:Subject:From:Date:From;
	b=DEGCOI3/H1SsaEFCd5wYIdDx6M7uthbrtybSGt1IciCJUgCyoVIq+qfEmmtyPMiM6
	 N/5Gq9+mRuA7Lp3XP2u1UGUr/YA/aCyD/vBzcDvpWc320/4PBGN4yCQL5aRtS4IyaY
	 i3zZRNyDc7vjQUORlY13oRx6vXNp/uzdY5m+EL5Vj1NQmM+temFGDBm15FiKsrnBRH
	 6sriHOLcj9+MvYdeR6dQDPLXpPZhEhDO1DQjMAzc1AJ4sKNCgLuSuZwyeWc5ZZuSQZ
	 TWvqNMyJuI0UV4WuSqaMskFz6gLEf3e6sQ7KyPtHFGswpe6YMCPypcENZsK0tO8QFO
	 02XjSriyg4vLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB410CD8CA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095267369.22425.14610811382722795760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95769118857a86b90741bfc334791f48667a6069543a905d64af10d6789c6fec
Date: Mon, 08 Jun 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780952673
