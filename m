Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040B927FB18
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773749094; cv=none; b=Muh955r6NzCTMAFP5b4K9ho/+Dxp6UjtTZLGILnOEKBXDP/JVmbmBArWM40iGvnatf92VidPHDA7T7gdbJ5SZO4lyMH01oKpNx1DJO5NJKoCAJBnDMgOgn98jRXsrPb8h8QrVl5IJrGkAMPyIo+2/k/QSI2T4dI0ZwPscEP6plY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773749094; c=relaxed/simple;
	bh=izdmas3/AoOgReuQZX9/vh+AVDiWu/s0opL+auCVA88=;
	h=To:Subject:From:Message-Id:Date; b=eQPG7dcWaerm2/JukZAJJb2I5hZq2EvwevogAJ4gwId9QI97Vw/mxM7MtDroaJg4c8EehPo8r+oM1fvDKgE0cd43DtJvMHxNRhWKlQWzs7OkMWDu5+pRKmXXx3mXysh2DqREiBQmlywwRh/b89o8oWUVK5qsMbB0xRUBuclA+nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hs+PIJDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hs+PIJDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF2EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773749093;
	bh=izdmas3/AoOgReuQZX9/vh+AVDiWu/s0opL+auCVA88=;
	h=To:Subject:From:Date:From;
	b=hs+PIJDgUo8Wi6Cyd90KoVFH2YFeKaP7rfQLmumc5XuIHdVlZOn2jJFsysG4Q6/fH
	 7ArX1l/0AEVQ3aIKQEilIfydcterUrFqVj0m3mRd5ly4PwG7pFduw1+/8Z5kB4x4Cq
	 8MbJXnLcAlhAmIKv0Zo1eY4VVVrjMKTk9knq6DGPwoWOdiiIktFak4LaRlCwF5Eaxp
	 4NJV75udp/i7T5aK+pvDcePIe0n3zK2sfzQXAXvKvq5Q8c0jSVtIdxKeSPl3pFffHS
	 zKF/vyt4AmYauwT71fA+z+n7zYfNqewzB9HGJR0xVNUoZHdQIzCctm0uSVqjHUUh1I
	 xWXrNWT98C6MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE7FD874C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374909357.376.1947907467172807398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00e77826d876ab47fc95b8a9a1a07924142da49a4c2bd403bbba9ea113d1c98
Date: Tue, 17 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773749093
