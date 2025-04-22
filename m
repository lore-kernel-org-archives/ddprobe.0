Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992892192F5
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745311794; cv=none; b=HagzUPJ3y5pTsXNZfGFGm8bgwYJ3teY5wGdnCSif3Z104tl8r/Q60StCQMsuiV0sGAqzRcJAeyuN+il97NmBZLrIWRc9V/ztczjU1//aqR1QRV70/uT9E00aOdF5Cl9eSfOyyFgfmDeerzRr7km8ctDJ7HhcxJzlr9wNltUoUeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745311794; c=relaxed/simple;
	bh=XS8ifcymjvmTbIqg2u/tdop98E4EnmUWKFt/Or6G2WA=;
	h=To:Subject:From:Message-Id:Date; b=Qv3hTPRg7tvG0FtBbqQNNCJ+aLVUyDd2WidZDww/fIiDnNTxoBQLQMMuYGcoSn////bWziJPyt0LJc5ReLG0x+Xal9Yjd/bAA7b6tH87u/7bNgyEz3NW9fR47Kz9+pqaALZefmmUMk37a/9JQl5yEuKa0ZkBmp8mojZy53gc3iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZswvfuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZswvfuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1461BC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745311794;
	bh=XS8ifcymjvmTbIqg2u/tdop98E4EnmUWKFt/Or6G2WA=;
	h=To:Subject:From:Date:From;
	b=MZswvfuJNdunmlHpELwh9Q3SzIx3UGktwFE4XWuRv23DY/uBmebgNfZpxApfL9kyF
	 pOKiMATtkZG93+PVXN7uGarqvDtCnZpaNBIJ30bnb6LcBavmdlzcUoLdMTjkvhqkDD
	 WHPeQd+rdQcVfpsOZ6q7Vlq2KzAg8VACBzrJayVa2EcbXcKVyHko8Z3JC2v3EtXOxN
	 OTCf+GrEHgWVkTbTEj3saY6tSIIz7Pd3OXaZXtD/reuphH6bzUbMEThf6RqOACECZl
	 fwK5sPZRZlYnwPaKr3wCoaiPg40d4X7XDQzVJG/Q5B9+retA+K5egFnXxqOJhc7Ww4
	 Mg5BPweeFhryA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D064FC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531179382.7402.6397195295349013733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8320a4478968c4b8904686d83963d826ac32571bc0f85e566b6dd4c2fdc28b6c
Date: Tue, 22 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745311793
