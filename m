Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3752E3595D
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745815794; cv=none; b=m29hqjy+fV+bfYmfU7qtEaTit4RlW+dePgDWtMYspi+ZZ9g8sfG+YYcNQQztQoiHdxpzX6I+HSee5qn+Adr4A6G+4reQdS+uLk+UN3A5K6QZP5R7qcEWJsyoYf1A0L0tJ+v+KNX/SMGgkzVkuScoE2XgyVSLIuLr0oOz3ofHil0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745815794; c=relaxed/simple;
	bh=EUP/VIoGS6+Hdmy7vxknXVSRjazdl+DcbPoaZUSSSoQ=;
	h=To:Subject:From:Message-Id:Date; b=dvBMAWS9YryuIKBBh8hh6rlYIK16zZFbp0b/rEmaTEo4sQmryNe19xUtJVtlJCfT9wAMOIUqbm78f/6pS2jGbp4TmsYf37hwmCxcYCbj0RtKr7sCVmsXju8gqBoy1mGurHdCFDmAVUu1BwrY3Lvtu++vPhBVUfGhtPfjvzuRc0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDdnEcV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDdnEcV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE9FC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745815793;
	bh=EUP/VIoGS6+Hdmy7vxknXVSRjazdl+DcbPoaZUSSSoQ=;
	h=To:Subject:From:Date:From;
	b=gDdnEcV/T7jwmvnWhOyupUoZaoU+E0utEDBcm64OF660LZyfzHgore3SzZBT5gkG+
	 We2bgytzf/abcYgCvvqNE9Fb2amhy6vKs4dKz8MdUaV1rZUCK1Xkb2ihMQEEuHNHD4
	 ywBAoUANg1Rxrwm1LbTGfMIoe6GmX4JkG8/LwP7fHQ5bZFo4gGmQgOBUNpvWo7TR8C
	 CpDN6yCx1Y2p62x1CG6gToW4E7d2LoY/erjkLYYnlB0v1/qXyUTyWC3bff+B5l1w5x
	 omjDtEgg7rP4Lp2HGX6qq0A82oMeuaBNkMvSpYQ3ZumN8DQtuxW94HpgFSXHIaopV2
	 fVwKWJFMqvlCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B4C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581579358.4350.7996835697008753472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07b8084adea7d995bb2cd2a79430bdf7adf6676008003a78c97f89135366124
Date: Mon, 28 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745815793
