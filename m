Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F9835AC3E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781628994; cv=none; b=GGnWXKaS/VVwqpbe0McxwiFl5nrEujxoTR/W/J8Ln9T4iDKyXgi33lK9WElAUQ5t8j+dIJt8FCfOJRpNNk62DUyxdrExAFUb532JVW4+1Nb6QSh2ukT09ysXHqPcw63w5pRPVQ3NhJEPAoTxI9c25bobSUK0ExYMKpyuhaAr9kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781628994; c=relaxed/simple;
	bh=nj6G0j/6ILgc5aP9VS/qfzeOyMTCh7TfiK6FK5O1Z1I=;
	h=To:Subject:From:Message-Id:Date; b=rtvcCdtzuZ1bDtONf3zFHin/8Pa+mMs8lmXFG+HEmdEQzP9tf18UlO4WIFtUKVPAtgZjdUOJyhtWuroIRe1HybFEoXJ/NCV6QU0Ku6YfaYmUJiM2i2avoP6MnE+ZZsz4KKHIkYlbLc5lQ36cWfM2UZZyan1YXOkmnJ6S1FvsGLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APOZIvgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APOZIvgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D712CC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781628993;
	bh=nj6G0j/6ILgc5aP9VS/qfzeOyMTCh7TfiK6FK5O1Z1I=;
	h=To:Subject:From:Date:From;
	b=APOZIvguqrrQh4OcFqQxdIc2DTkg3/7DQb5fgX0KR2VvoPiJdSu0B88PnoRbtj7CE
	 QqK/dYwynZz/V5pNr3qvrzYHY7Cuy74U8kSV/LjDbciyXtA92xeOSo+czhSf9f9c/C
	 GLUBbq7yAR5M4sfRb/nEfQqeFXI48k7xuLIg3mPTie9H7dWiA8jE0sWcmYoBAcJGUP
	 StCdKjfR6J7BBBvDYqm2UTQZUNM1SL9qNVc8aXEGSYsvymX+W72FyMFOIbDmOuwUcA
	 72iWiJVfCaQMG3qhY1uGgtWOlxWER/VKgUnM7zM0oLYUa2s6ThLNKRPXQy/vGKGmnj
	 h8tFBFdf8kl7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5447CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162899373.7623.5223256661867736407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccff20c0bb438c92cf8b78fa831cc53276eb8aea1b44934d902766955be70147
Date: Tue, 16 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781628993
