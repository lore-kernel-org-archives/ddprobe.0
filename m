Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D6D1891A9
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787508634; cv=none; b=F/VmnicAhiH5lTakYjJKFIfqx04mGPjZiqF2hi6RZhdbDDlqEpTiwa5WeroqJVpZbCu5vNRc9MdvaX9bLRIURmwrbpourapTivZpCGl6Z+b0vGNrFfmIfbuvpNohysw4OLtJEUWuW0fmbmAz0Fkc0D9oi0VBKNV21HjxgiDcti4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787508634; c=relaxed/simple;
	bh=oDkgfwfN2LMXpxzWTeZQidS2UuzludoqwC+N10O7eGw=;
	h=To:Subject:From:Message-Id:Date; b=QZHSuBpRjEiKSguucJbzHRQX10gxK5vJA6mwI1AQNScWEBRgqdVfx7RU4NVYAe0O4ZehUf06WxD4rKMlT/J5uKXLJBzKYkCfgEfsbFxEaT8e42+6ZZYJAxpzOdRxubGr5PIHuZilQiuLyd2I3B9tcIX7uMEh9KUxwTcfjDCGZdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po9M1dhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po9M1dhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E5FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787508633;
	bh=oDkgfwfN2LMXpxzWTeZQidS2UuzludoqwC+N10O7eGw=;
	h=To:Subject:From:Date:From;
	b=Po9M1dheWeOEyhZgEWTOJ49zZEahZRnnZNQ0ZvJqZNhV0NGaRok5/IgYuTTUC+VXz
	 JlusOdAm+HKK1M6Xkj/VW41JdInS115xkTMi3jpF511SWXOTzcpitMupS+6NgH9Hrf
	 LGQVEUcfkijlYT3Bcbp7YmK9qVmZiYUewnc3FUEK9FsZ8yj2ooZ/shGID0xUQPdFa6
	 kT6hONCt6kt/ZzYNIKDcych2vS5DfBtoI6LH4syxJ6A7Tw5fY1I9TvPMzai1WN9Zw7
	 Fg5yb23MDa8KKpgEyA1qw1Du6gou+mzYRPbRM6dSE2RQv/wplcjhp66axkCRxD2hrQ
	 Vq/XWcbhqBHVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA09C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750863369.9822.2021983977909945586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b46a6c5f672158f1d4f1c1fc082ddda627a4b3a7e4a8fb20a93b2b006ecc44
Date: Sun, 23 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787508633
