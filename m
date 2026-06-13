Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476B1331222
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781391994; cv=none; b=ELW+SXgcAvUCxtGAmXA7NTw7GSGEFhX32zRacT5+F1K42RO+iF4Z2Ch5hezkgxP+tnHrw/Vs5fxYUyukzlpFYO9DsK/rkzEC0jtiQrIjPpR+vlZ0huLyxBQG1pbI38tQcHY0p0u4kuRaYulPFNv4oK+Jn9yb8v7lwBm43q4pzls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781391994; c=relaxed/simple;
	bh=zOVgqxRfkye41AlZbpeB19n6E3VsvliKPdkY9mbr8m0=;
	h=To:Subject:From:Message-Id:Date; b=f7tW542tqSW+rUeOa9YUG/xG+c6aD/WFQ0rTkN3YqRGu3hHrwXKMnqk5xCT6Pk4vXbjY9OCGIK7VnC7LVGzTrG3shibGLpYIWD+Om1A6ZH/4OPtfiTpndrQh9XJctRB8OZ3tV4/X8TIOfgRhcCtc5sQezsel64VvqMGKmE/lvEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTie4PNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTie4PNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59ECC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781391993;
	bh=zOVgqxRfkye41AlZbpeB19n6E3VsvliKPdkY9mbr8m0=;
	h=To:Subject:From:Date:From;
	b=dTie4PNx0j6kHSvF5XYADnmhtT0KCN/tl9eLSnLfQ9q95duIRVhroFqP5rng+Hm+8
	 xbnOJP/KjkOlSaCg7K+DwzgvbgqXgEYHp3f8XLWrech/bHSOw2th28e2DGYQiixMbM
	 LlAx31DZUPPstR0S9OLGKgS+J3cwDiFq2MahEhLhiWRpZh/UJBJ+f5v84qvapa+6Rq
	 TqqyudHM47elWu4YlO7NeCSjITSksfgrO50IGwrc2vcKireUCJy5+F4ypWQUVSLDqr
	 BfKvr5NJAUqD6A1sAKXQjzEH7Iu2lS8/pv7nX8Lf9QtOdwETkDTy3pm7srElJ3t+C3
	 dyWd78qzVY5Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC191CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139199368.19834.4204884995874032256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cf3f22c5d1a1f025516e5d71f4df06d5e14a69deee6f8995e5709462b6b9d4
Date: Sat, 13 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781391993
