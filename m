Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417D827456
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767489234; cv=none; b=gzjCYcCiXj1xf2pv1XCUgeQNhNUdXXJ1R4QyoDlGPhQLbWg70AwlufUe8FdGUpTWlJDYG7ezlRvoaUYe6YHCm0dvnYjJWQm/++5iXa1f1MI99bsQKkctYXq/HEVDbEmIPtd2N3tuvL2Z2EiZqPwWzaFwlXTni/+6LFhAu43dnUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767489234; c=relaxed/simple;
	bh=94dzK2Iy2l2qKTt6T4YFw1MP2pQKQANf3Dy9ZVjtxEA=;
	h=To:Subject:From:Message-Id:Date; b=en6883D/0HvSMnWd7yqY9UwlA9lCLMI0tn2VEa4l2PkHbqQ2cm3gOokhqr5tlpRIHL9QoDhFXVJxAYUxHUh6BDCr5U65VikjIWuLqWL1Xh/wAHnTCOH8e+GkHKUUmKKeGZKqz71Hv8ux14YQa+jatqIglWCkpPJJFeMZuC9bzRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqZqD/pM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqZqD/pM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA900C113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767489233;
	bh=94dzK2Iy2l2qKTt6T4YFw1MP2pQKQANf3Dy9ZVjtxEA=;
	h=To:Subject:From:Date:From;
	b=aqZqD/pMACymX0+PfqrTNnleyh726xGYsU+S0yZEP3iMnJk0Yxq8vlDykXn2Y9Nuk
	 TIUmkD86H0qKs8jThumoUzbYwOQPFtavVeHeMlwt4GhakR/f9KaP1YICx4Og2Z0fAJ
	 ASDlX5CP3p/ZWarAWo3D24hcNwKFG22In0h+uOR0lVn+LjSh+oMlvPy/XWDBgjPmzC
	 EDSs2I/LCqwXEDrbiCMt1jmXN4F3G9aZF1gOT7I5tSiDo0VzAt/R7Fn3XLgo5lX2eU
	 rpSoSkhaL+CCN10zwEwsb5MpZprX4bFHr8+E93ssFOg5iFUZVrEZQdcwPWU7ycC+JA
	 D4mMLDpTal26Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FFC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748923357.6862.14472222498600714052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2ea32934d72406031030f456159cd04b5a57895d2d07f4d2191472b64e33f2
Date: Sun, 04 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767489233
