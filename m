Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3376A200BA1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749067194; cv=none; b=FtB+nrsiNpKU2Rw8xaGHPSJ1ZgWadK/o8mvCT/uFLQIOuPANITW7N0teKbGUyMBQtTc+3VduiVxlHOclM8p9Y06WNXW8/I5lK3f5vkmHVzeHtgPdsUbRt4nredcwvDmABt1KOQFU81oujzTl4JmSXGGwUaSTd4K4me0Uy8fSb6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749067194; c=relaxed/simple;
	bh=WaLMU3jveBTpkW2AEyNxqBe89uILdiZeMdpntxGSYvo=;
	h=To:Subject:From:Message-Id:Date; b=Vfg3vaoJgcFeMv/HCx6tSmKdLSWtmXGz//aE120ofrWULpZKRg2Xt7Bw6FqwpuaXZSudO19WO8H2G1wP9VSyOHiRLkwhu8KRcxxxFI++yt27a6AVMsHSwBK/WY3APfVhTmdfCrxiUdxBJX+VQqFthL5qpbd3q2FmSEG+Hn0Yn/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJOURrlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJOURrlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A2C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749067193;
	bh=WaLMU3jveBTpkW2AEyNxqBe89uILdiZeMdpntxGSYvo=;
	h=To:Subject:From:Date:From;
	b=aJOURrlNYDrnHX2sh83KEeSjAo5QClM1KYli1NQdmoixt1cvgIBa5StnMxM1sfxYR
	 6Bg9slrkg2m1QomVW1RGvnoAxjUYWbZggjlV0aIRXj0Gxyz1jE8i+CYiAPvK9FkQnw
	 1LGmyCm7BYxHwCnE6vutVbqVtq/iIogPqMj/pB5ApEYPVNV9mBBi7HFDdj55GiffFJ
	 3+8GvSdhxjTZVW+adJFGPm8oukHnP5gWYccZqkEX0CNFicNI/j4ov6Yg1Fu4qaAzy7
	 6Yz4HXXAPXi9bN7e7IQt4MQSA/OVCs15eYcEOoUZYmOwcXekxlq2gwqBCtiIgS6OFp
	 7muMiNSdMnARw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97255C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906719360.27742.11164310566893721973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c751694f50dbece57b74fd4ee3135ccc627392570c270b5ecd4851a7e8bd2a89
Date: Wed, 04 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749067193
