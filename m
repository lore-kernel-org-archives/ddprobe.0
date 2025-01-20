Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F191E2823
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737383754; cv=none; b=PLMshD+cZK30VfXlOCiakT7V+XpFFwH0x//F0HrCIKYEcsRhM1gqeZDREll2IJXn0/meXEvvqFQnFHjRJjgbPFP1/VQIyz7CpzPfn5p9f7YTsSJaQm0/Fu+oit8T279QlOFKKJX7aHMdnx/8vvc3mhPJGRfXlszc2veWEeO/3hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737383754; c=relaxed/simple;
	bh=F55DVFM7FXXWrF1BsPHCnJQ8TQoBrzNmK1W2psUUP/M=;
	h=To:Subject:From:Message-Id:Date; b=GfesH9J9LYUqa2wxu5aPQIjps+kyGACBe9Nd+2tuP6iSO+5ktBDIIwuZA7EHBm46mc1ax1aYF5rT43As0bF2Izua2qCa1LlohEnpvvUi0n/9Mbr0KgVV8enVorjwCUq0kNYcCZUT4FwprODtzKIfd/7rBOYHV3VcvjK0oj+eKtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYdqJeg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYdqJeg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB182C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737383753;
	bh=F55DVFM7FXXWrF1BsPHCnJQ8TQoBrzNmK1W2psUUP/M=;
	h=To:Subject:From:Date:From;
	b=AYdqJeg2y+QtaMZ6zvUTneGpOtSM1/Nq2EUG0IM/QN94EHZpCkEXUc+mZOYmPK3wW
	 vBIKW52bRupHbGNpI5SvnyATLYDNv1CcyfhY5qHb+GQRTN2dx0ko9AgAAbCPPwjCOh
	 nZ++TD4vCvyjeAjIokoIMGVnG7uASjuzxCi63/Zw7T+OaMsN4cOBrYg5R1NrK5yFJX
	 FCxFxqHcdWkaJ7AV2dOvU6imsw4Pn8EVFHe9XjS+nF/2q1M3EEiriKjOtl1ey2rKvb
	 2DcZGOrXkfKtyNLpe+expuOoBpFHWa/p2gJMcIQROGCUL3x2J7B9jA3zg56QIOP1ev
	 8ArNNlwWg1TdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9FBC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738375362.28767.6428130975020182353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5e8b5e23979ea954b80157893a32f8759ab24eb76e9444e27f7212e766dc38
Date: Mon, 20 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737383753
