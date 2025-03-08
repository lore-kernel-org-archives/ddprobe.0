Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B4F1531F0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741423134; cv=none; b=jd7KZfA22vV3zImOOcvqrDJxho7ZaXVRY6u/rsOx+q+j86pA2htJke9778q9DAY2Nuxsyoa8uQKHkPcc0mCMdugctiseSqpASvsLl2sL188vhHixroudL7b1fuUfBWOv6RDYm3lJn+aAyM0W2bJWgCOngQ1R3+ULx5iJhmIh9Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741423134; c=relaxed/simple;
	bh=OqR61st32nei1b8IVCA+/BfqQYSoeaKKYWZkck1WUJM=;
	h=To:Subject:From:Message-Id:Date; b=E4GEsKEqhI2ByXda5Z3Zl/NQr/xjv1qRm693nDgCPbqTD3aawuhxEl3vKK40Fk9fjeS0Je3BJz4/K4sWNNPeJXU91BfE7gnbIYYDbhtzuXZGIESOcQRIQ9UoFMeD+Au+RZb53+Ur32R+peY4k50qoYgkLVMmtGQrX2JzTu84q5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+5uhU9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+5uhU9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0054C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741423133;
	bh=OqR61st32nei1b8IVCA+/BfqQYSoeaKKYWZkck1WUJM=;
	h=To:Subject:From:Date:From;
	b=K+5uhU9QkBjZ3fVSLZugeIY9cCrdRgdkGUG5rE35kClpuLkkTOXorK6NkGXAqG8KO
	 vw/aV2siy76X2W9yePKZimvLUYn6wJEMcbDMPTKk3RiK3n8tIwAnm3+zWw46qXr+QC
	 MJPwbCb7n3oTDiGfMPbgE4hnvRbDGRUhXFHf9dhQGYyYhxBS+1s0SVRCWdNS/R71M3
	 w56OADwhcLy0uwlnJabzpA/0cP89uD8r17CuDzG2KaBYunsBbJHFagDcy2Xcj/FzV0
	 F1WsXqAKigp9rSE9IK4TkzXktXW9wmdteVstyet9x8p2tnwN0mAKHHolpWShwEUoVW
	 ep9yI+X17Bm7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC07C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142313363.15156.5921454520796483341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4b453fc9b829e623893f8524c38c45627bd046c7e76c78f7da20a3d4a1cd07
Date: Sat, 08 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741423133
