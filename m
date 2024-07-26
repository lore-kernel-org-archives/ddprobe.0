Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A9314036F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722036354; cv=none; b=uahovESxYT1rL6KFJffS0tz29hTbn5tejbGmBpiv1dOSmRqEmWugHdvEDB5hBGKIYiB0d37tklpCZzyxCM+vgKrCyV/L01GWAMMQ6JaUGJwbEz+t+KbDNnB6/5WVhi7c5Y3o2j0dpIxd/FT8n5KcHSryz28pPBvtSW0UbVeJco8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722036354; c=relaxed/simple;
	bh=Ou8/c1SxJV9wzpF6wgkmVqy4XaGmQ+JK7QBEECG7p9U=;
	h=To:Subject:From:Message-Id:Date; b=ILjtXzMGj4WbNfChZDhoXyNV1TNqpnnzgpGhW4gzq9/2PwLnWDpITgxiow/8M3t9mAGJgjJHdAnOjhxQZhMBMN63JZDBhSG9+V+yDPpGQdP4atFT27k0saGesf+3joP3K6xOpqYCibz5Qu8zOec6cIm2+ffI0wdHfOOGq1M9ymI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH1q4/tZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH1q4/tZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF19C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722036353;
	bh=Ou8/c1SxJV9wzpF6wgkmVqy4XaGmQ+JK7QBEECG7p9U=;
	h=To:Subject:From:Date:From;
	b=SH1q4/tZTy68CwG8oKLvhJFf2mi43XbrlsWQs35E5dhgWV/3zEbQ3phSZior39KxZ
	 S1X664JKwy/0YVawsSPb9uwBQLQ5/1Kdh8VsgyCguQyVKa182r0cKPeyZLuzy3C7pD
	 P7OFdDH5PBFfqidrZFSjSjAbyyeTxUHIird/632BCGVPvA8rvtwi0X4P/eKb+gtXwr
	 7m+dnYAT4m3gDOIGa6ErRO4v1V5+YJnJrU3IsjYHgqjvRkffKxlrg1YGUPWAshXj9T
	 Gp7fStdpHGbtQGk8ac03bn45ibgnqNbn2uW6uxD+cqQNmqQ0WiRJHE5VysBlobXSvy
	 gp97NHpRtkFJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9761EC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172203635358.23393.8291311378303585188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac289b1720d2a5651cb9b325f9627eaedab771fb7dad89cacdbc3733b6f1c86
Date: Fri, 26 Jul 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722036353
