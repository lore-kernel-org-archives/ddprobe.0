Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3085A2505CD
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746878394; cv=none; b=Z7t7+FM2+mLc6OCs95ONNaR8xy/U2vAnmEsrX92DMljONT205JgzcDmz+BPQshYvrW4Svc6WtYHD5n2X1BhdNmnLvUZ22pq+8D0BIk5pHp5b3lYmEwRZGENizS2hL1kSnTjt8TSo4eA5Ml0xKZjckbgRfpfxHVOpN+yOKcCEjNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746878394; c=relaxed/simple;
	bh=qG26lT0IRFOAAqps41ZsUodzNfscHoJYrU9G16/0irc=;
	h=To:Subject:From:Message-Id:Date; b=oH42XAI/x79rESl9GfDChJGVTInt6ZU1IXrTCx8rwaCqonyQQDvxhxRqXYqZQqKxIirnIytqoUAkquPehmqj9oTeLLqUTGreUu27a7XeBXm9fs1bkWW8PvCsfHfsQ6WxFP+5fUVeVufDgY7sARpANLIIqXEuqy4dHQ9p6Lbe/wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ri5m6t1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ri5m6t1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C72C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746878393;
	bh=qG26lT0IRFOAAqps41ZsUodzNfscHoJYrU9G16/0irc=;
	h=To:Subject:From:Date:From;
	b=Ri5m6t1HvGMXI4CJDKQ9j9zLmvyixfOiQCmYwWCKAE+jVVnhOuH9XjqHbzitBzZH6
	 JOjM7JkdZSr6zU4Cv5Q91sBMznACGnLVAKoBuAhujznFmQuZKead3NMRmD6zaIMctY
	 4j16ubH3SkS2hon2JNVmmkbxdTME52sVKCmAk7fi/+MJ2zwyRYWXPadj8q5v4i3QKF
	 BU3v5Dft8L2DOHE4hsHcDwUja79tk8mHaFMM2TzmvcYAEsaNsiKcxLTIwDFdVRp0MX
	 K6nkiNSBxZWnLQZIk6SOzRHADRuFtviYpFLAf3QMHVmsOHLpx39kbTAW0qpzN1zls0
	 lMbWKmoNqwmoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177CC3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687839357.22825.2060133335650129558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9465f57ce5457a57c8316200ce2a77ca5b5aa75d7e03cd0ec616e0e2432b57eb
Date: Sat, 10 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746878393
