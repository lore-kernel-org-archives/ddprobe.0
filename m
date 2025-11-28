Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1854D81724
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764297774; cv=none; b=D/OjdL4IvmfoaLQaaLWhXCYixIScHiaCVof9HEj5lUp7HT7LQHHalbfSsRFSIvdlYC2NUhowFxIT8JdwKsPiQVf34BaDSH/swwtXoXjRA0iYQoVSINlDR1pVZXKld10vMHlHNKhWWDifD/WmO3fRbXIN44uds3GeTXVQCIgzYw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764297774; c=relaxed/simple;
	bh=UX9MHwB2JdT/tmVsVrpfwx5VU8NON86X3oqwVGtb4fI=;
	h=To:Subject:From:Message-Id:Date; b=RCYkuiFvZG0FT9WfBDH1+WiUqf8/gqeGLKkZNVlZwj7WcvXePbrhxpNMkoET+rmAcsdsBxo24HrPqX51VhqoSooliy4DD2vTleT3mkg4OzT22rxRO8Zs3XGa/qiuxfPrjKnYk1w9Mj/SdZtHO2Qn4ITaRVreBcKfiPpEr9x4xQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0Fszpfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0Fszpfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55D3C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764297773;
	bh=UX9MHwB2JdT/tmVsVrpfwx5VU8NON86X3oqwVGtb4fI=;
	h=To:Subject:From:Date:From;
	b=r0FszpfiEYP34nVOL3dBJw4q+UMs8XGS66/3woGKGzLRTTIyR71XbSbTdIdt8AgC3
	 ArCbkPtV+ui414dDo28BtjwB3whDi8DiGYlKfm+09NiFEXVwvS2r4JwJDpbvRk2zQ1
	 WOh2EtzyXCw73B+UGauxUM52ajxDPCBFXklo4qLBmooEMNDUbPfMEfuFfgCdQHJmab
	 l7R6qUwFaWjg1GPB8WXmuCR/m/YxCvVu5EBeicsBf5HpdXgmAk6mn5KLcEZNMZTw/N
	 ljKsDzO7OsXamqxESU/lkerTSyZGFvcuZrPkx6pOUkFnGdFY5Sd4k6VATF7rCxQGaY
	 Tf47qbJMYAETw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085DCFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429777358.28927.7439501509179987622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d91c8473649222c6378bd017a2f7bc39cab13370510fbf23e289e1140ebf335
Date: Fri, 28 Nov 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764297773
