Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27173313547
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774089294; cv=none; b=MQQeCcN1JfAo7eEtSEFztKNG32TAoHj6Glu0oD7p0cconPyo91RLdCqUJwm7KEvh+dB2b5Mq2r6qLu4VzDJrhb5Howyl5SAp503tm9dy9n0pCjKRThYAuopyF0orAUJgzGEhoVVYHMx/wfDJtd5qUfUgBmH9DRye9Vr/H0ngG7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774089294; c=relaxed/simple;
	bh=KjgONlBAEf3zD4MI6wOdNXUQSdG5ZC9ZWkmRzt7F+i0=;
	h=To:Subject:From:Message-Id:Date; b=WiOSoJjbWZt7jAmj3XhADJP+LPmPpYboW40+oVxXVJB8FbZxBXMiaE3LU+PGcUlxiNLVspimHwlEmgMF2ot8F4FvhiMLInCMLeVGG3+W7qlzrWLom6WQI0G+W210TperMs0MHjHLFPTgwNY7//XhR3Z5jH+SQoJdMoNSL6hIi5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXcWPGSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXcWPGSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A155BC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774089293;
	bh=KjgONlBAEf3zD4MI6wOdNXUQSdG5ZC9ZWkmRzt7F+i0=;
	h=To:Subject:From:Date:From;
	b=uXcWPGSHkxjrNLzY4HqVgKrarbcCQyL+KAnh/f6r4Gk2r7YSOz1x2UEc0bdPxta48
	 Re1iwOnnuyxPupWk5HfB26qdho03o4pukQsAGHOmMw3anNJXZ6GhykbhUeLzmGgN5l
	 BMYcvfPYzGicGuk/WtF0egOD4WWycUg56f88JI5SWiyLT8wOoa63ivDG4Bb1FP9uTa
	 mWV0nMUCY1Z3BfncNFiqESqKQwpuqGfaNQtEYHMc+Zg4N7lDXR6mm6CeRvu2eN3SZD
	 NBD78Cvtk+Ljcb08btgUB6tgliETxcEzS6G9HuIqiC5AFI0MNNc2SGi0WDKoAKwFyv
	 2/9SV9HhzU7dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2AA1094468
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408929357.24288.9420850842146253647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84e3d69513e55d0d22b7aecc8fc74852fc771ee122e132338f75b8bd87a3990
Date: Sat, 21 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774089293
