Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456D9360
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714695143; cv=none; b=AKkcLvptZNynjR/ogQzAUDvOkk1YHgWUG8CxNMH1omZcr0qoiKFHfw1qf7fSM67kuOQaSx8KQpxisVGCvmUF718YYyxP+tIleoihHgq5e+YlMvK7uZqrAHyKhVn4kTKgoebdu8/5lI1Q2W9R5RKdkAXeJ8j21/j0DKF0vtQQO/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714695143; c=relaxed/simple;
	bh=vkmvyE93fH13jAySuXbYiYfr++E5gjgoXn+2ORRzK2w=;
	h=To:Subject:From:Message-Id:Date; b=NYNc3TrO0tXZ5CqJB5CIiOFzTcutzxsZhAHJA9zw9cXSWjm+4QbTSW0RyGVye5hBA2tZr7+qWn/8d07kdlw8MGq68Ux2LFfYDjvI55UiE4ev6PDFyOU3FxK5gjYjE+zNRz1QQQWzsxXs+NPOiokSQRRyY5CiPxyUdEX8fwToipo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRIZ0Hb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRIZ0Hb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC88C113CC
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714695142;
	bh=vkmvyE93fH13jAySuXbYiYfr++E5gjgoXn+2ORRzK2w=;
	h=To:Subject:From:Date:From;
	b=bRIZ0Hb2v+WTaY/LAgO86hfvUwIJjfJ9OF8Bw5O2SIQ2NBTi+y4nXFK9u+QlSnDHS
	 iOPqwQyLkd4uFR1RF17+5kUa7BHPSI/OrpG7PjWCjdIpIJY2bmhzmjbYngCVSywDki
	 cDtJWVDAlDDLwAdJjm9XDRQrvPsm2DjQjHFE7VE1dgVI68JgC0gMepqin2QhpKK/kc
	 0+MPCS3UKxH/HMspGN4CVf4p2Cxu15EOXINfHji4/YYfxW/rmciWy3JRE+fXx6HaZb
	 iTq0jcRu8o3M8Ik6KWggs/x//7AhNi1dV1tIGwZc4hfHIVouGXLP2o4/GZaal7nE5v
	 eTkNf5I6Ny3UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C393DC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171469514279.29246.13181183875815594106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db69f45849afaa105574c9a5cd608380905d0a32aef1933bed950048d239ab4
Date: Fri, 03 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714695142
