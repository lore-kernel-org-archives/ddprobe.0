Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411A1205514
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739352655; cv=none; b=d5B2Knv/8ihdEGKjGHIu1QG4Qe6f0r3qk3muQp91yhLRmxD1PXqbgOXgoysLJwhBR4AmjA7z3MXR/fuxk7Sl/F+19qZWc9wVhrv4xF0FpjJHr0cSQWwVLCPXOiuMdizcASQaBfKc0XCWfHtgEZiIfsWBo6DTNbEhhkhELuFyjMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739352655; c=relaxed/simple;
	bh=sFMlghdTxmhN0O+dXoc3wC7KKGuUsI+f0ebRMbbJLB4=;
	h=To:Subject:From:Message-Id:Date; b=bn02fj0wz5Ep2O1NB0Kpvo+rublLJDyU8KjI4LUCvPO8lflWEXxAA3FJyQT5nLMQTSrFZSQC6tJi9xbHEw6YKy2jZfUqVS3lVhOjYH1IaPpP1YupBCYqTCBw55tpiD+uWq2t4AaCMgJaOFB7ADumG+ciAPtXGmavlsX3vr9Xi7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fdwu7rjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fdwu7rjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2C5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739352654;
	bh=sFMlghdTxmhN0O+dXoc3wC7KKGuUsI+f0ebRMbbJLB4=;
	h=To:Subject:From:Date:From;
	b=Fdwu7rjviHTXNt3hHPqGrMUE7OkNAam5MVBcGrpSEYmG7qt2Xiv+/Nt3XffNG7/AD
	 T8KrOQXGTnUP1j4Y/VYi8/8OBlVj26UMHDKpOPoH2Yy89ABjDvkBP2jGYCONpqwfIV
	 ShUKOnJvWgaL8BR0ifVBWikj0cyf4A1CWHUS6LxrwmWJjL/ik4VTYbE02Vc+VP8diJ
	 ugEFEwpLBkJ3Zj2d6/3F+x4OD9eq4+QYX8gzv9mvUWp8w1P3VVPmRcZ5JmehDkObuS
	 4JS/HA7b63DrXYl8RQPvsGELvW4GwZ/e2IeTZga472dyYJKqevFovb5yUef4hbCERR
	 ZECCpEoSPpWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D26C0219E
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935265367.16671.8940371420081360561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aece099090349ba35ad9845c89ff67b6ad5ab1bf525b505f0602e59ad8eebac7
Date: Wed, 12 Feb 2025 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739352653
