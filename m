Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307D52417DE
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777747054; cv=none; b=hFbausNLeN+5bbxhPNm5hVQOI1a+KtlfWgcsJYedZZCWWT3F+7f9vs9thgmDZsBF6vOub/O3LfKYVwk6EoX+j+mCzd/Vo+U1/VxMffI0nw6z+i5AEEzCUPdJXT/MNuGBuceyLQcC2/rttQEu+hlT04ee2HfYZld9c+oCHFjkW7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777747054; c=relaxed/simple;
	bh=FxsFnxrQ6Aaicb29E9+TPbPG9MGXF++uYerZXnD8SFQ=;
	h=To:Subject:From:Message-Id:Date; b=tonoS/eGuZTFaUE2j2SByCbH5suV1oGl2vhpDMd7p1hN+dKZ4Ta0kR9Dxo5NzgYqRbfS2Xn/vCi+6D+dM0zxXoBtibpD0i4Rn0dp8aX2TWHp7YUb4fM9bmxr1vVmkupIOJZPFu/dOvOJ7fKsFVG5SHKrGpMqGbDn6+79PA2rQHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCiS7KxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCiS7KxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B8AC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777747053;
	bh=FxsFnxrQ6Aaicb29E9+TPbPG9MGXF++uYerZXnD8SFQ=;
	h=To:Subject:From:Date:From;
	b=jCiS7KxZvRIsQ3z4ksLFTbP817cc/1xIpZCUZ/LXYxtpkXv/SojTfv6OKwwKhHwjv
	 fkl5jnblHx7p4NQN3GwYLrlf+vODzxrIt96Oe5vhoAiD90xceSeeT3+tuii4dztmjs
	 UqI+trxHvmIotW4m3Wbi/18tvMTA+5YdCKErGnyyRW5rJE4LFpOwW7F32ev6oVPTpH
	 TflIxSFTtAHxXbV2L3SYpmC3UTjqqZGqzOUsEr1dAVv2uOnUONSnDeSxe5x4ElSaKE
	 VoQBXd0NG4m7dDqQxUIIbX23wRcmrYpAz+0nJVVfTD07TqXppNrh++NrhB595Pi5Il
	 EbjNt9Tm3xN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14E9CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774705369.9016.2233399342461365720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0989fc14681b50ba3cf43ff78b75da75dfbc63cf25befcd257b13d08ff6fefb
Date: Sat, 02 May 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777747053
