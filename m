Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD14322DB2
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756814395; cv=none; b=igi6R3foPKO6GQ6L+6mI4o8MbDiOB+ncKLBHadi/8eUdBCzhH2/MJA+ncXCrL4aLT21G2hQ6lUVw774W139xxzWfr1Y3qI3xoYvqtxWBwh9nF660XF6ygaTd/iEnizAyMQ0ZZ3EH99mCHMaApxf3ba6zFyLHxiIU2Gou5zvTbuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756814395; c=relaxed/simple;
	bh=WCU/EdcP7SGNe4wOodjfndTQN3etqZLNNsBiZEDAj1w=;
	h=To:Subject:From:Message-Id:Date; b=jUGTPYmp6jXeAw4PqOV4aacqwTlHJALjyFBb9ZzTgEXKbDfSySNjk5mOBQyTAimkryWwEBpDbzrPlkZ0W+vw02Yc6b+czXli8TgKVM2EzIWqUMNkMVN/zs345tLhXdPy/qs0m1dgbvkGXR/IfWWpwFjwCFki4ZWEk6yhhwOBzhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=et5KLd3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="et5KLd3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA05C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756814394;
	bh=WCU/EdcP7SGNe4wOodjfndTQN3etqZLNNsBiZEDAj1w=;
	h=To:Subject:From:Date:From;
	b=et5KLd3go5WXAvuMxm/IOZIVThprrACHnB2+0NyQ7jCHY7Jh7U6U+gn5qJLiomGm5
	 2d0+gOaYUpsLKPTlyFDX90ylWBHMMRBPCuz0/VZGaTaB5Jz9a1exTVWwNuWOYfvGhF
	 aF34le23YkFrGaUGaI3lHQqQqoWZhNypcPn2wjbZacYSxgRZUXWRa/wwT5IiGO0czx
	 SRZ3wX9QAVB61M8waEYA856doiNZi9EtfZ1KfcRfr3YD1NDH5jYGO8h5boY3JG4v/d
	 nlk2LQjss5+O6qiA0Avif3Xt3+hoJrWPzkKSoUamS9RzBHyBtij8Zj/ZQBrqk70R25
	 OZJqQGs+FN0iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2208CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681439365.32050.10445658717877291930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92dcb37a5c12e608111232f82af684caedfd117adc2707be338028358f4eaf0
Date: Tue, 02 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756814393
