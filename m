Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CB528726D
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774317894; cv=none; b=oksDB8lKePZ8MfJMk11C5QRpHxE7sYMwY/tzg5jy2k41B4rjct5cGbFyHRTy1lPZpLmuLJ3vv/Mqp+o9cuDe2IrjfojL98ZEvyW7iOc4KlV/wY9NAXdfma5DdILwKThpEVNdYCumkqjsS/yyJFZzXvco2Su7HK3RIqkDo+92CZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774317894; c=relaxed/simple;
	bh=gKf+LpYzAHxa86UXGVOLXVchdFfpgB6552J5eXXOaGY=;
	h=To:Subject:From:Message-Id:Date; b=LhIXxBGUXrojvRmfAa4ZkhvXFfzEvBKxBnRqPQyts8TAWEMx5DMKloFQHzKzOpFn+Gc2ibTj8vz28yywACHYsltQ0W+BYIpiGCfO+dTRDq0h17zxrgiR9bnoKx/Ogwl8+cxXH7u8aqgz22kg0UaA/krTqLDP+dAw84mnulUFeaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apyfZwHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apyfZwHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F412C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774317893;
	bh=gKf+LpYzAHxa86UXGVOLXVchdFfpgB6552J5eXXOaGY=;
	h=To:Subject:From:Date:From;
	b=apyfZwHtC9/QUcW+73w0H14qx/TbzafEn81fpEX3+0SyUUSjnXh7/hOOMZioZoSeR
	 vLHxXjNFgFAEEAhBo3WwYnTM2ZiOiWK3eE74EvJSIyByvVrTL/nkKDzxC/MLKqzX1f
	 hU4ylbo1B6pPlhgxdNihqJdtqGAeb9dTOeyxxDDzjzMabZ3WEyPkZly+Xm7+sC7dU2
	 9n9QYzF2HRGJKnChNHagfb1KpXajydaimqqFgoN+iSR2fA3W6Kn77pcuPtGWnQYzFS
	 iu5MaL8VIRjxOQWLtX2nUzJ5XHcH48ay0CF82+T4x0g9GPWEktabaaPmmoJ/9xH/k3
	 4RP1bqM/2JHbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E4F532C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431789358.29379.6920177993436539255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2705753adf51e2330b3946818ceeb38b0918a856c0477f725e9a1a6c0a1ebc84
Date: Tue, 24 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774317893
