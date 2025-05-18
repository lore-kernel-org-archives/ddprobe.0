Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3345417C77
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747556994; cv=none; b=NeXi0GbE9dePug8KUpsPgF0HjxWi/QE4fGNQwn/1eXIBtNZI6D5X80kEcq7dxDqc6/ysiV8dRWEJcl1IsuI+NYyWIHN4jQoJsmPqj0C3SBgJuIfYHLxVq4l6kxWNK8XOaj7Mr5Bh1V1q8BBrktWE49WjYprep3PWu9TgxavAuK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747556994; c=relaxed/simple;
	bh=RaYtN2VN6vsp130KPtEanFkeVtIIJRW6TcnfBLFBAPg=;
	h=To:Subject:From:Message-Id:Date; b=R/hgUBCfxzOXn4v5JuMBNCEFPHHa8NDZsJEdzlmugEDNg+K2VXPHcablc238fIJCARlodIVYzqHM9RhOnknMn3S38Nh2U0NkZh0etqyWlnEsADzs5JEO8gpx30SVq4415E+ly+wAbfyKrPZ5RMq+UYw3/6rtIuKKslBTARAg/A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7HuQbCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7HuQbCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2823C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747556993;
	bh=RaYtN2VN6vsp130KPtEanFkeVtIIJRW6TcnfBLFBAPg=;
	h=To:Subject:From:Date:From;
	b=A7HuQbChNfVQfeeLYgvOdEnAYi15i9UGXNnKCO+bcGwqURK1IRvKJnZNGeJ6RgHr5
	 Q64mjL7M2TyEnnmWo1pdnTCgzpRlXr4Bt1VrDgULn8hdlHvE8pjXnf84bnWbCv0ICl
	 ZvLxuCH27liVPPVnzDlq640ErfFpxm0G6Whd6xRLL5WgLD7qx7U2ZhraYhNGvwJv0k
	 5hJiBSLI+bJztG0bOOWh6D2Cypyf3Kn5I29CT3+kFwEwpuuqRF1zf6uf6YIRI9+xpd
	 CaH1aTDnrwTB0IU9jHzdiR2QHGScc7pp7i/AgOSFNO99F20I038S63YyRar7nFCBfO
	 HVF9HduUL55jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E346C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755699357.19150.9409913680761529462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a784b2791dd7c1fc5509f64379e2fb214910956cdceb0ad47dc443802b988e
Date: Sun, 18 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747556993
