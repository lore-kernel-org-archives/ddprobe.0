Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECADB39AC4
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712507897; cv=none; b=kdRU8fQx2m/vUjWhw+gCZJKqTFydmN+JLUhLtoMjjzn6N+ULVOcec3B/gBCmAKAQB3rcDHgeZZh2xRdmxF1fHzX9cGM1I9BC67nH/SzxzWGw2U1fgcdUn5fYbzaIxVzWtl7GmhN/t8iEx8saFI45anlIlUp+7QaV8zFUoPy91Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712507897; c=relaxed/simple;
	bh=NUrd3gdVkJ2KBpv4NpmjJM8PRlpfxVIajlmCsN7w52o=;
	h=To:Subject:From:Message-Id:Date; b=oZUReI1sM1F0QGUkpePjdbhv+Pn/jq9sC+HHoscaI5yfxcIXt/C9X0ctY0TB2BfZ8Xa/lIBN2uHZiEpiP7OlukKuENbxy8QFGd4H33HakcnyrxLRqTnCyJ6ETzCxWXhe00k9I6wp3ZjXhQGcvRfuDbOXr7UE0P2XyQ8RCd65+Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6V4hCrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6V4hCrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7280CC433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712507896;
	bh=NUrd3gdVkJ2KBpv4NpmjJM8PRlpfxVIajlmCsN7w52o=;
	h=To:Subject:From:Date:From;
	b=o6V4hCrPYpSVqZbQs4AngeEaja87Zi2ByIR9CjLOY4Duu7aLcPPw7DixSR+t0BzjD
	 rpE/2LrLy0wiHoKhV/RfVB2Rq1p4bV6eqHyqhQ27DirVIAMH3NXWG5MoS3nEdFNRKa
	 cW++q+D9IvRmYRySKYv7Kkqe+ZynYloq7fbbsicGgzloeQZfkqZIhL/Irx00c2yEmW
	 XFs1TbD5JXPfxI8qkPHADutF4IN7SNPwFcOfrJoZVeP0X0Dm+9RZi6scw+YkjGJVt0
	 0dPuFGCh1jHV9KlSa8n4pjzrdf9wpyemtXwAjlW1foPRUVv9/tUSWUU7d+L3AcF2YC
	 xmrTltMZFbNnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617E5CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171250789636.15529.10495049507862940893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb28c197c0b2a540f7524074891f28d13ad28a02c3ef801ee1114062b45ad227
Date: Sun, 07 Apr 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712507896
