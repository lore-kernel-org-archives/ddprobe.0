Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E57515B998
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778132854; cv=none; b=H6paHd1VUWsMRWQzUoimNDHgnndHUaXZN9f8zaWKzXqKxIHiFegR1mmjtqzFKWjdkggl85DxJBJWmWR3SiiozfLwuTJDvSR+nQl1T9eNlo8d0LeLqyRib4FSynwTNypNQIsFpPgU7IyhVue3YvMzXhIV8l9FBg01q2n/Fnstqaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778132854; c=relaxed/simple;
	bh=3z76O/kEONqZHpY0Iy+jP1/U0Nxye/Zz/qbYgXWBkjY=;
	h=To:Subject:From:Message-Id:Date; b=a+fC1inlz6E67V3PC7Rekl5i+1UxC2inSgtuGDaqaR0StFZI1ETu5gpALxgjBBto41vdSJvNOhQHBWoyIZ1YGNe2oFu1pyywZUxbwMiqzMHe5aTOmvWaXJDUEyhLPnlEAeFfxtNIuqK5NVkvFuJdI1DYUSdd2P6TYS4IZBBIk/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR4xQb+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR4xQb+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C081DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778132853;
	bh=3z76O/kEONqZHpY0Iy+jP1/U0Nxye/Zz/qbYgXWBkjY=;
	h=To:Subject:From:Date:From;
	b=DR4xQb+9cdYuYtm460kyuKGLfegtUVG4xSZTcBw4FOMGU3OuTPFNa6F90SVDRFQoO
	 l5WokYQOytkZUlJz6ZJLJllsQhCrzRwW6Aale+1Z0C+KBuWlZ3zU3Q61Z0bqd2JNpH
	 26JNNmepMShKOJR/IDnTarza5WuUA7h4nW0/sSdhfF7r7gf2u4aJd0SnpzNAmNo4oO
	 rZdLCi45TZKZrwb1hDS7lElr7vO3y1LE1K/Uz0nJAliKGpvZBGZ9OKulFA4cCopgsq
	 vKXL75+N5TGjKLdcTxFzkSVDxNYGKRoXeVsP8BoKTZ+x9iT7l2BiEH81CQZSDiJOnT
	 yMh1FKdenskWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7DACD343B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813285369.3948.1454890194548607047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754e1cfde07469cb7e33116608d78211399f6ade621aafff3384817e092739ab
Date: Thu, 07 May 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778132853
