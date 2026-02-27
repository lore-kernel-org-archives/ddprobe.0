Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C364C368971
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772160893; cv=none; b=QPZtsz8h2Xmvk3xqTdK0gF3ecRKfv+f0IOQ/aeG2HUQGVr3QKIUjK5EsRlVel7Iraa70oSwWDGJFpTFXVvmf3o2az8zGxPz7S5Aoi9iT1vs0A2zxus1uxfkrBFWQn0NQQnD7RPaQsXtxkir7hVzv1uxIwU9psNwJSfsBIDCHl8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772160893; c=relaxed/simple;
	bh=7BBocOf3kiPVXBoTMvUoMS9PHYA+KyUUTx5vQkx73fI=;
	h=To:Subject:From:Message-Id:Date; b=grRgrvHHN1VNp9se9UhaCVYR2fePRRQgTq7FzW2Xy0g3A+MsnJJd9mD9JSJDKDN+iX4fSTQG6JRzpMuygjv2O1N0lCKRz+2xB58DDJiPUVIwJXsrRgGYcNwVBccoX/IMJLg50t2Jl0e7Uibw3wu+d6sUZnVUxMnROEcTmuwcHaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYTn+S4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYTn+S4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AD5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772160893;
	bh=7BBocOf3kiPVXBoTMvUoMS9PHYA+KyUUTx5vQkx73fI=;
	h=To:Subject:From:Date:From;
	b=mYTn+S4ZoCxEhSzSkJLGEHIg4Ucc0hvZpJao8cCFITczsQzuzKvpjCvmdYpSVofHa
	 1Oo4IyKR/uCA53B7zu62PGiv8UhHYnLr2+gBmIZn8x4sQcOrl/eDV5q433sFG7BAMC
	 E/b8DR56KvE/92sjm+JSCnbd07UsBpa13xtPh6QOeDY4dIV9FtTDwIVpqdzjU8gi4M
	 Uv9JRws+yh9zrCgHZCL3AAIEWJ3cJ8HX8llDcDLURRxBVHqniKt0WZm7uf5QBPX+Cd
	 +WUtULTV1luCImGotojDPeGViigtK1K8L/VZ1k2McTe4UUf/S6lu5yzZmGTOauMtSA
	 rIsVDVzSME0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A0EFD9E2D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216089358.19831.16379500696994440396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9faa6a37fdbd51156a44752878bf1dbd2ad928f8e09050ea50b0ea888fe3ad
Date: Fri, 27 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772160893
