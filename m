Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B3A283FC4
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766604834; cv=none; b=u1x5SDMQD78fvSU3NGX6meoFbQmrRxdqC54AfMX8wMN7zq0kwjOa4h1j/BdlGs52oRQBqkXq9oIyDasxDeF9Q8ZSAiss4VtuZOOZOhZ9+GBrxDmt8008yTxkjSLV6yqvtkf6HaHPVM4+OQEHcQoiDA0j6Yc9zOqma3CZ+ZG7NI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766604834; c=relaxed/simple;
	bh=eSrtIrCe9Var82QnFNsN+BGhYth4Nqn6hKyPmo1uwc8=;
	h=To:Subject:From:Message-Id:Date; b=Tpnr2DrRlq0A2b97wHZTohMJKmDfYTtaVl+ncE5jf/Cfef9AiVobnkHbAVefasGSJA6A0l3tmfb2v9JUKGpuLAmh5Xa9ht6rga4tAYdk6vg43vOrLQV3N1AGEARHAnb2S+twLV8owdDnzYYGK1p+3qhCIxf/jYj1O7GdO0dYakU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9w5T1QG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9w5T1QG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AC6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766604833;
	bh=eSrtIrCe9Var82QnFNsN+BGhYth4Nqn6hKyPmo1uwc8=;
	h=To:Subject:From:Date:From;
	b=P9w5T1QGpVsiqLruOnzHUGXzuj1xbqAbWQVs6A6nqXUXClatV3408Lh9alMBoIvzY
	 9tsd7FQPDSKou+BHvZJzZzpnUJwWvFR0p4c9ljNwHYCOB33jh86NPxA+0+/TuJ8T/Y
	 j7lKQGmt8YUFZIZPK3CrMXSZLksRS9SCHn1+nuf7ezzIGBVF9xdYDy+JjiECAD0JRf
	 Xdf4tKLVSFYyx00DeYWEJ4ag0dgnCIIaLebLut7PQd63xuaaoTGzruTykVzqYpfWLA
	 QGKWJfqRpHzdYpG45sZ5i6ekMcON9AtRFOaSy7Q2/LbNjvDNY++RF8wxyalo1V4Qvb
	 IVsEkEBQ5KlDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91910E776F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660483357.6380.15208673332720296414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55d14b1a7af9498ef86ae9ebd4ecfbce090616e04b149942c2b407197367969
Date: Wed, 24 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766604833
