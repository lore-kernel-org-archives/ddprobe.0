Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E47EA41
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768703634; cv=none; b=D05BQy2/vFRX5kKEipavVimAipdksNcQwGX1Hr/xxfPFxIw3BqbxOsLmPb8ZvSbHfRuVX3t0CCRdafpNwFEDW9j/XbJaM5j9RyRUYrRzDe5rcaHGum7dm08TzssyQ9Ch1ICLcgx7dc1grYgqkt3Fvief6xyREpQwvFWj0ncHIQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768703634; c=relaxed/simple;
	bh=xfogNZT6Gfk0+N0ltkhmW8E5M4p9MoxVIcyaU1oP5uc=;
	h=To:Subject:From:Message-Id:Date; b=dzSwNFOBr8jkORyirkAI0eMuQmE36T7kK0xBy7ZDrA8q2t/pmz/kRHzPEd7ELGJk9veIial15+MdK3Xt9/NtUHDr7AwByn2ZGPN/bCzKz0Jm8zjBGM3q5X4SMQ7VwnpT5SUkmVWdKnCVpRzyH0aPUXILbU+4xYbrfeiCuQN5oNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mC/ykMRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mC/ykMRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37CFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768703633;
	bh=xfogNZT6Gfk0+N0ltkhmW8E5M4p9MoxVIcyaU1oP5uc=;
	h=To:Subject:From:Date:From;
	b=mC/ykMRBCV6I66ce37e6RzPQHGngULj9278lnTr1evrAaRrpLkpi+ZRUsA10H9ca/
	 oZkM608uIJFaff7oI126Be8qAMWFRLcu46pZ7ZXvbrfbyMFR3QytI/tPpXwaSD4MxZ
	 nLNTXLuX2Kp2ij2zHIZMHX4kOkHvhUz2Z+RtRuazdsvxkEfsLtWuTrP1D5BzuayAc9
	 BhvJvL7zLOu6CtvDHPlW0kykHQ2Dol3SFIBhIXWqYTnmB8Cixb2iEo8E0yeIgh4k2l
	 iCetXHV/57pAY2cstu/T2xgLMopZVTeyIgeUEj59jDgQBtva1dBLdyCRnwDZLqEA7Q
	 U5lBkDGYS9/jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95743CA5FEB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870363357.32270.1347755308720619371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba091733dc88011da668abd1bec4196bfda748a07daad5c987e38186644acb5c
Date: Sun, 18 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768703633
