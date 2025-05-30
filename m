Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD1D54652
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748643595; cv=none; b=Flh8vKe319BIfGBNZN2A9A9nXF5+gYukkFqOaSTmmbCfbQr9Oz5/9uluBQPx0AaWnW+503JpfwvLBBECiJajQuBBrqJzlZ5GhMxuw6sHI6g88KGAYQRKq1++JnNn9y+5fyM/gl0YhZi+CXv9dvr4mSFr0a6fsPxWAj7mQSJEuU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748643595; c=relaxed/simple;
	bh=yY8k1FkMRx+WQb7F8v38E44z2XaBdBGZ48Pjyuv7PP8=;
	h=To:Subject:From:Message-Id:Date; b=QqpJ9nIhzyMK/9EyWG5IpdLEB2ACqddL/gEc852fp53vxhE/n32FCS45ekgQnnLb1pRjT09+F5ilOKWHfimdhbwjeG9K5RW20gFvDPsiGBC4NQqyW/gY+Wzrv1cvoyoY4b4+Om7j8cNNqOPjzlwWdenE7bMYnXI8EnVHsuj8c/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQDVlxIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQDVlxIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F296C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748643593;
	bh=yY8k1FkMRx+WQb7F8v38E44z2XaBdBGZ48Pjyuv7PP8=;
	h=To:Subject:From:Date:From;
	b=cQDVlxIbB5OuvMGThkvBndVXWtn1raM69dqTQmFnZSM3T7/afz1P236NXMB1bg9Pm
	 8FwKfVMFTLT9YNmLxX7tGao4vkkxtS1mBU+l72cI+tPtLIdr+yTje+0JXtgdv4IcM1
	 FGJIxrb6+93gcyOHaMpUBfFvvX8SmoOVm7wi2VjMwiJj0cmIXQdKRUrusIjzF2XG8q
	 rHel9T4n6J0Bq/Vv1g7GjUsVs8Ce/h18ueNGc0QHgPth7y0ce4yOmW51pJMLMWXRDM
	 QKjGEPa6HPq5nDzHYVKAHl/7bKA26kRPTIjI0H9jx8hY5SzoZSNuuHfoJ0n2d6XOVs
	 qE4ENguDJ0VRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E52FC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864359357.6523.17678096674244838322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727983730c4433956c2b144f77f09086b05fef09e6555ad0ca3020b51369b41b
Date: Fri, 30 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748643593
