Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACE520B81D
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747210193; cv=none; b=sCFAy8MDTX/Fz1VWi4HFRogAcOjv33C6v6LRGL6HjzfYO7HLJDcC6gdjlG0sV6qZItQYu6ZDBz0Snnbfzhxbc7u6aT+2UocZCkmnt1wjasjGLB6IRT3f9OQxnr6HdUAvKwW83wjKDy1ATkOQ0EZMWNAU9ZSuJD0rdlCzliZGS24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747210193; c=relaxed/simple;
	bh=wpRDJHi8EwFgFRatI/VX+tZzJXhZTDDInmb4gqbyT0A=;
	h=To:Subject:From:Message-Id:Date; b=T3JCnNa/O1rsPdG8vZI6Yat5BiPgrGI6TClfNEbiT1689LvZ2kx2wdFcKmFIDkUfDuD5W7jgXN5dDKE2S/ryFuu2nsTmEpsRWG2ZqNCq8sJgSkMU+7rsMfm1uAELf/e4u8WuMYfv3xFd81W1goBOr2o2UlafiHkuuhvEKFFY9DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLjFEhQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLjFEhQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A375CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747210193;
	bh=wpRDJHi8EwFgFRatI/VX+tZzJXhZTDDInmb4gqbyT0A=;
	h=To:Subject:From:Date:From;
	b=LLjFEhQzIPmZw8qsO2bRoWziM75xP+6zVDpBcvVih7v8nz58Fzfy+mpBa6QLFgkj8
	 1nX2mefbJsoiBWTC5HGOjCpq/Wc7UrTWs5rUVldEv6UlQxL50jIFQ/o2MeGalmf3nI
	 sLZ/90w2LTZVh4KMopSCvBMdyQljv6nZbqKy9fxKFjRicPk0iqAAHDoXJDWS8Sh27W
	 5oVzK8EO5wYMS2BnN+OOsvvYTQWKqT6h1x1cQYrmTh4CE6//rcX+znKRGgMtXqWqlS
	 XeZR0YFLAJeBEwSYifU5A0shBAtG8xcsDZ6ySeqCQgN4zJ5aukja8RlGoDAo+sQZra
	 K5QYSym8diboQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74AC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721019357.2866.5005145671769371628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d389580f026bfe332101b9893bf9d9b56172795f14a7adb51914010dd93f622e
Date: Wed, 14 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747210193
