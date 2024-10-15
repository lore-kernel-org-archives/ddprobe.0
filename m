Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0CD17335C
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729011954; cv=none; b=iT2G5/xoid64PKiAZDtlYiilKu3epId3njlcQwoX7HCAXsOxwByCuF2sxiCG3FnFAWTo9n7vWhsTE5N1lDj/1N4C5WEqGr60bIGD3chwRdw74JbYByKKhiPV9ahy1USUx8yK2/DpRgVhEWA0vsGSjrZmjXqtRn3S4gGGSaF6E5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729011954; c=relaxed/simple;
	bh=qUKtFwtlAJ+BJbTXNqQyel5Dclswgak/i5WmtSckKyw=;
	h=To:Subject:From:Message-Id:Date; b=TJBxULFaESpblbLFLqONqKjGXJelvBAMYeKieBgEjhz36sWMr66yxBN/U0ciFjCHwtiZeE8VzXpAwFGDSEndWx7lqT3MLw6BGFZZjLVNI/JGKe6eEjggKX9eQF5URRO6D4GehiQvJ3yfKE5WqmGldUUYY1dMmmKx/6i+YQ6SqwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfXuujsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfXuujsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D06C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729011953;
	bh=qUKtFwtlAJ+BJbTXNqQyel5Dclswgak/i5WmtSckKyw=;
	h=To:Subject:From:Date:From;
	b=OfXuujsYxXoIqRald4IqCXU5ylQpp3TLGR/5X1Htu2xxNtRxTmAQPazDi85HFQY2z
	 +YIjEXY9Kv+kVjUk3B9sQLv2odFNsrJGGW5dh/ZUgxWHuGsd0TWy55rBE6QBBA9ugs
	 1eKTtNNWbpeg3dqmWAovRjqflDfd3nMgMLPSFUKXfaoKgXa1qShnquAVb8/wZ6vkXv
	 K9fEhdv05hAUQWs43d33Ges+nD+XBBYex6dlVWxCvObN9DLEy6HGCNwFXQDOiKZE53
	 hLTN9TdnUcFe2giIX7p/drcAlsLHwwHDur+t1e5waoqyIz8Nwzbz4vZclPe1oGYtKW
	 2q7C72wHqnGmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B1D1D88D
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172901195360.22057.9126339187791846567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4953cb205dbdbb65321d45aa770d502e38ec7722094ac597796c62e52f8a6a
Date: Tue, 15 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729011953
