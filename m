Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF018C01D
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747515594; cv=none; b=KLWGrNF/AzqwLvd//Z7A4XUzPofU2FNQr1bwXQPgf3n9/Eg4Cwc5AinoY9ZI4KSLIjU7SLmpQezk3XQmlN6KJu4ehTW4FHVmlgy5hDAv+Qy7p9m6AwfkeAUDxk8uSzSHp/mtjwSXTf6Gf23A+z389vwdePbn/rzFY/DmzidatlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747515594; c=relaxed/simple;
	bh=KoUsDiRpU/EXo/+xKHPU9KmBwBlz+8WqBwblko8uZO8=;
	h=To:Subject:From:Message-Id:Date; b=fYySmfLQTBdp/R6VJgPvO+SWaYkvdsrbhN0Y7qYp57oOSY2Jbmas1EePQ21JevVcG0eqfHP8NxHohuH/A0Ut/SIAwKvmM+eJsouwKFlH46/j+3KDlpNFvxvM+vUwrt3wYxmRoIIeS6nJNXj+BI4AAFtG+DVi4gIzij4Pni7RQ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTE6E8hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTE6E8hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC665C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747515593;
	bh=KoUsDiRpU/EXo/+xKHPU9KmBwBlz+8WqBwblko8uZO8=;
	h=To:Subject:From:Date:From;
	b=TTE6E8hiCuGqiUl0oqwCnx0nWck1YCfui1vqPQSY/LXGUNEU7Xk3WWbcqibAOoezz
	 lAEryckQVgee+dyB65SgUgWmIF3e74/UO23go2YQr2HaK8aiIZMueb/UGYRtXGeA29
	 qyvrHuwQzzFyWxcz16w72cjchcH3oJn3DsUu1czU55k66tEE9RFLMX8/lM7upBSn6P
	 rLo/gKJ3mwhokJLYWUZUh3cJbaBuZHmD7znLF5wzoSfsojd0PLsUmw2JKAUERoG7JD
	 kJE4ncWGWOEjIRrkgvoOMXSE/UmZ1AtP6kXtWXRJCbgtmWwf/6GyIx9n2S3E9MXh4d
	 8UnD0WraNXMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC8CC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751559360.23206.15905569166651296632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636b5ac86831c6c2b65b89f23d2e549f1a435b1583d40b2f60979a1a8e83f693
Date: Sat, 17 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747515593
