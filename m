Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2A5274658
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784962834; cv=none; b=HeSwsXBdN0H2hOkH5XkTDeJazsRvxM9Gy/qjoT/DBimDRzJnQ2zrte/KQrxOsuACXu6WfIR+Xnelj6AaUFSVgDO0ibAKKfxvPDafMkW+JrGBsgy8zNi2Y16ruQNvPRtr0nJYBnU6qYkgCsgMbfvQtOIMYMQlQi5+JsMHXPojL0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784962834; c=relaxed/simple;
	bh=7CcUMKLyINJBTQ2dU2FnsD1qkxckd011MyvojSW82xs=;
	h=To:Subject:From:Message-Id:Date; b=PW8PZc633DofoqtgSLRPRjfPrqJTBD0kgLhMMxY8RdSNyeLt6F8VpEXMmXCXc/24RGpBM8F0s6vWrxalCtFbA7SAJUG0y+/Zb7/DqDAxVa9yBQYzi6DvQmMprqOV+V5cwtWM5kuN0As1bFMlGZPju3gR+c+DYDu+ozgy+0BGQ6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRlNk2qR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRlNk2qR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC93C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784962833;
	bh=7CcUMKLyINJBTQ2dU2FnsD1qkxckd011MyvojSW82xs=;
	h=To:Subject:From:Date:From;
	b=GRlNk2qR+94GMwWxCMLQOuCJZYHSCoFd8ODyAc2Yg4o7gZfOy4Nv886swYP1w5fUZ
	 PTDLdcR1U1LbfgYPqd8RWZL7etUzIdWY2hf9jZV+wgpwPT7pi/fmB7elVxX3gMvjxm
	 23l+bWJfId1I1wh3HVi8fT8mrRcfxIGW4vScLuJfx8vmUPopmqGvj+EBkpxFK/geO7
	 m/j5FyQO4kEFDbgXvMRq/bbX8P2lw8swRX8QTWQR5MoycNHJopxe8u+FQLZg65VTX4
	 SJxWAANeBzQWSbXgYEY2H6ji/6jPPfoR9f2Cecy/Ci0zPwYjYf8SyH4aIMteKEXMtq
	 uS8WBtd+PMlqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C94C531FA
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496283368.23066.15781878274966328916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01107aa1087f954841dca2fc803da64f12f9796776e1557bca28959dbec37d2
Date: Sat, 25 Jul 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784962833
