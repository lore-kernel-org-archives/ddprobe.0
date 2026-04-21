Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDA0178372
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776736654; cv=none; b=VFH0M4ypPkkVnb1OP0rv2hxF1u9XEIAATK1uCL6bcRcu66Yn5W4WsFwuEixgqvDwZe1BeW7eCkNrYaupJPk1A1fgclGsJCrh9LIRo3u9YoP9b7E2zjlWyGle6O+SeF2NeT7INP6EUUCDCaPZ+xga6oEAVHUJG+I3v5a39/Xn6w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776736654; c=relaxed/simple;
	bh=MJhqQ/Ua7UQ3O2m3IM/7RUX9khPAZiOXriF/KQ9KNt8=;
	h=To:Subject:From:Message-Id:Date; b=gnYZKWi0vfLG41riDm0+6qQImjl//uxx72ajWANqxfbxXK4ZnyvkVx3m722hJWT+jr5OBhWvvq5Zsso0p8q64dud9JlU4Dw2pS6Qaravd5YzcKt7Y8BrKyJBGVfweUIdhrVoccvWc20ZhVr3CjaDbUUXLJi/0p9u5Hpsgclvlug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2AI4mpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2AI4mpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B237FC19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776736653;
	bh=MJhqQ/Ua7UQ3O2m3IM/7RUX9khPAZiOXriF/KQ9KNt8=;
	h=To:Subject:From:Date:From;
	b=F2AI4mpYDmvdjpe1SHdWn2WE8TYSF8YCrGbw+p7CbpDUuQPpql8tb4XUcn9h9HyzS
	 +b39RSSxKD28CH4eXKzJb0myswSSwCHFKLrdPHn9ZiZWib1H8oyf8YUoBtiDkerybc
	 ftYv8T243k+KOOVyFHavIu5DmeqM+p0F2KwSA0asvfgUgMeklS9CQSUVA9jH2A/JKW
	 YsNbtTIe/tGPOh9pq2ZVRBD8mcwquHHjvnFP3jlABq8wOYBPjtpH083YljniSU8Lm/
	 itDMbzit/QYTmhFYhocmBTwwtjhPy64Y4BeQ1kJnQNbSNPTzjq1ybh2ZysVdfuSbvO
	 Rr/zr6XZPJDGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9257F5A8D3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673665368.12974.5445221360831566622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824c4672d6808571f272e248db63dfcb542173bd16aac9d7d333833290cfd7cc
Date: Tue, 21 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776736653
