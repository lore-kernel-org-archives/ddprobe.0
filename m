Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5123E13CA8D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719998723; cv=none; b=F3g7P4YWYmeYSIQAkv45B8tJE+96qBEFLY/OWKKuacvNAw7KFnEQWqYwz3MyBo+ppe4Xv9EksuurQnnq9TnAJT2lvo2GiqN12kZeA9yUdS0FIPfegfLZYYbWuwufp9sxhxRmvICDwrzd/ZN9cg36A+diURGhBwFBqTUdIy7NtVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719998723; c=relaxed/simple;
	bh=HrfsGiO3dW3yYMByUk6K6R9NJjzXlr9tFGIIS4IPinA=;
	h=To:Subject:From:Message-Id:Date; b=QhkDHIg1jMB8dWlIuf7PcgpWoScvz/D3KSmiYq7mSFgVbV81Pwpobibm70XV7FZKNqPvxK4otccCZoGgnIx/8tWzUizD62Op0uA8WFUiKJWVDnG2OrdLItev0MIHJdvNAWiQIHWw+pS9DHZHXh6puICV0quLaqkaWzgVDfdjAl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKAPF7R/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKAPF7R/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A13C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719998722;
	bh=HrfsGiO3dW3yYMByUk6K6R9NJjzXlr9tFGIIS4IPinA=;
	h=To:Subject:From:Date:From;
	b=KKAPF7R/yP0GDpFEiZ1KPhIEj8ioKwRg4jk+md+3Tz5yIgP8MgvVTz3DJjjxi5nYh
	 NYVSq2JzLejRZSFGzpDq7BACvF7W2qJMCusCE5sXiDrRKYpiJLDY7zPC2Y9hFf3Juq
	 2Wk1rZMczR0V/GnJfmNxqBMcee+HfbhoUzdX0VPprUX8ySuOiWlAMLGv3XZJkIMOVx
	 ss2eiMvUdBsV7wfGJLml5hNg8iWG6lct9gTvGLKj65OZb53QI0IkzGgqiB4WhPEITK
	 RrHMBZZkKXe5PBqd/lKPwXnJRO5Gpf4Pm4YpT23BtHnvz+6Hx35s7/Cy5uNn8OzN0k
	 /tB8fJN6+puPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06AFC30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999872277.7912.14020908179282125607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6396bdba438b81a9d03c2b34cfcd52343628452ed5a03af74461c6fc5348c26
Date: Wed, 03 Jul 2024 09:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719998722
