Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337DB2512DD
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750794594; cv=none; b=LdGgY2Jdr+xTZAItbCYCUk/JVC1rFBv1Vu967/Ezu3IXoO/h907vEYMfy/pvZFcO6smcBDFqbAP6u16f9+7Ts1OeFiLIGkLCb2p7JwSopFvxi+J7TsWAy7UcpeJzZNJuSdS37aPIduiYKzqig4EOSWbur3RySHlbJHjxT+5td+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750794594; c=relaxed/simple;
	bh=a9+r0mTy57EAiHtX+w4txCWx1MRLkVKaKDIEH7zN9D4=;
	h=To:Subject:From:Message-Id:Date; b=jY9tRiNg0Rp3JYiVfcy7QYu7VQwVoxiTqhe6NWV+0Lf+eIXufZa07E6bCY+CtqoIzMgs0j4YA6vf8wb5r4RyN/2kYRIxONjLLc9xROwoQkoBgcb+MR+E24MzS8ehofXvjHh2eir1e0OvzSxzyN/ea68YcamsBs0ycsQcj3E8jXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxIdLByl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxIdLByl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750794593;
	bh=a9+r0mTy57EAiHtX+w4txCWx1MRLkVKaKDIEH7zN9D4=;
	h=To:Subject:From:Date:From;
	b=KxIdLBylYnNDoCAoumazgTfB7d7Sq/ljWJr86LGnuN7PIg4vLNCTaZ17wm9etly/G
	 FP6bt8iUfayqLQ1/VlbSJ9mphGNR55IDN0EOp64DD0H+BkqNiwQhCDhwIa6doEZR5v
	 FOzukQp9p01L8tl9Uot9Xg0Y6UPuipTl305Db6+NkNr76jkPywXqwue94L+Ri+CCUe
	 J+vG1MOkGtWrh8qBN34EUqzwUX0aoSKRjzabdTn0VxDcpRgm6fbyuoZdCMv4ymse8T
	 MiQzzD4mBz4SBgROHwRuObdLlFqrjbmiawvdZ+q6kqGU/adaHKtvYVlRyccUFjed4U
	 EjG73g5OoKf8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D7C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079459358.1497.1471451795723959936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9950a89ac9c2e61fa59b646686408cf88895a1fbc85400326925304b3fe1a502
Date: Tue, 24 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750794593
