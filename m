Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453051922ED
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744451994; cv=none; b=VwuIIpldXrmZ6QP1FwiP7/8F4Jzu/jU86aCw6DjpolTd8eEHOSZm1EuaRwEkO7RZij7tHLN7mI2f8r3fbeCEgsNTLXHaIog1KiAeobehRM9n0IQgGSg/Rr7yhpJvGJQEGpZUg40iy1+1KmzdWrvkFvFr8OvYWEUbJ2cPkhiJLzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744451994; c=relaxed/simple;
	bh=eQIaOPfzEAFnS7lmBQFbAj/v9GsC5nawYij5WvugvA8=;
	h=To:Subject:From:Message-Id:Date; b=VTQTSz8oNL9F0W3acfX3rHP6+LKZbQvgtTr4Z5ffeTnm2zQ8yFJtOfhucdreeCmq5HLlqD2k/k1SOEcO8m71k/utEujygjL6b2Fu/nXosf3Jnvp8zAZOc6f/K6IEZ7rN3jQ4LAi8BBe4mDCM1PBlNwzjANEOt4WsommUBuLSAMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2e5SqV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2e5SqV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A434DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744451993;
	bh=eQIaOPfzEAFnS7lmBQFbAj/v9GsC5nawYij5WvugvA8=;
	h=To:Subject:From:Date:From;
	b=Y2e5SqV4TLADR/3QbkoFcXVOyB5EmUNdgsQvJRMW++uLkybX9/KFB1Hkrzq3re/wo
	 WulenPdNI3OOA5WR2krMbz7r6NHcVntSZZwmlzwbwUI6YuBKAe/GuHIYly7MtNr+/b
	 t4NL1eymEKEE3EkMA/ocfO4Mq02jAqoCQKYQjXVNiY7N1bPc4hCGD7gXps7Cy62AF4
	 1HUJviiILCbWdTE2GZwWm6Z1+LRYT5U43sCsCKP8uIEBtXblPWdmlzFfZZyLwQ0jXS
	 WU8rF8HaPIAcqfeNsd+Spv4klwYX8peq5NXN9BDaE+pFpl2rca2TwlPPSX1oq3Da0G
	 S8dmP1K8KPhyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8CC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445199357.8443.13325424805883208236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672c0cb5571cc9776145cbc91398868d192cfd92923e5296065e22b33d051eaa
Date: Sat, 12 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744451993
