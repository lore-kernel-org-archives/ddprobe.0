Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D653054EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771071894; cv=none; b=Dga3+wXsHHlcTZkUBnkdISnGI345gBP4R1Bs6UbSzYuRkgcKaImBJ4zoG9KpTWJZyxCqOKSY9E7JcTzPnGV+URFTvS1ea0QwO8kCsHHVwFS/3D+rpNgv2gVS6hXRpGRQqP1RhNXMF7PondqgvRmJOX5z8SJ6gb/10SLDkr4QbL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771071894; c=relaxed/simple;
	bh=61qp+b3xTHTY/9OE4XN1owxJiigyMMThfN9WZzBdvAk=;
	h=To:Subject:From:Message-Id:Date; b=fz0yUFd5p6vLfgo6mLY56NYMIt6QYDe1m7K20fkjVRvw4JbJgvMBDcHQfEJ5NT5j9hTlhIUnrbiN/2QiA3VhIUEhw+4Znjc3UCcb8yfLfKNCAnHCk7VvLOrfkiPtHR3YE19cioW/hOxlZ0uB1WAab+NUotafFUSyBuDqgWsX9qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfgoX7K8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfgoX7K8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365FC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771071893;
	bh=61qp+b3xTHTY/9OE4XN1owxJiigyMMThfN9WZzBdvAk=;
	h=To:Subject:From:Date:From;
	b=RfgoX7K8ZSH8kSoB5QUab9OvygbqEGiFPQJwLpzImXQ62zr3TNHLP7MlSPaIlPalk
	 ZGNrda9uM3Klr54/Tt1pDDt/+G/3OI0Y/ZfoVVqf/kLkykVLC64RE5ZClcIPKbVdtt
	 bplIyEdGVQaqt5CBgmR71o5OLKopm9A1YfIYxfa/zi+krLAi7tVPoo8B43A+50pQML
	 xHND+wt5BqnJSpWQoEt1ApSgo6elV2s3ZFkfwBSxMYtT/4PqbJ1RjAlKNqJPx9gTBC
	 1cUGcFduNxCiYDdcJgmetcEjB7/T9yLkvBDBtl9vZDe5E7dJQ6ZEmu7tE+BIrh8Obl
	 91LNKfga3P3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92798EF48C5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107189359.24937.5723610137391845852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305a9dd90976e2564833d13f1e7f213427c790910fc4998c538507ff7bd0f577
Date: Sat, 14 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771071893
