Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3541A840A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762727994; cv=none; b=Y8ArLzrPTmRuzSHdIvRYTqDf/UnMniQoYXSyTUKQYX5mPpZb1589CzaZioPdD9wbPYE6+kQx9FGAWktvLSAaMA9rcoNOTE3tTP9/uYs0mEjivPGMQef77fpg1J6vcXhjH1BScwUMRcLNMdMa5CV8DQJe2puhQZgjL5p7kD2o3Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762727994; c=relaxed/simple;
	bh=0bg4yaZx1OIrJ6rcNCMWmbInyLDvslOGAf+qvSNxDps=;
	h=To:Subject:From:Message-Id:Date; b=oXauPgWNH8zHtIpr5eiDxgkybOr0C3mQqruyGP4WXfWYktKM/kBBQ2Tx6ITTXJyfh7LhrYRIdfhkiLYNpHAbWBZ5ajeY/ot2Irh+FyeD8xMyoWGGot34eLfFW/dQD5m+uYGsl9psNEbI2lATWHmF2OKR3apX2pxT356ZI+bUtj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bu4U7aEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bu4U7aEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2248C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762727993;
	bh=0bg4yaZx1OIrJ6rcNCMWmbInyLDvslOGAf+qvSNxDps=;
	h=To:Subject:From:Date:From;
	b=bu4U7aEehG9aMBS47QhVk565MUzBWLeIFyMl7Rv9lVo4Jn8RXAWxQ0mV1IOFRGcku
	 XhK0lEPM686i58vsVE4r2SBndQaJJnJHhQXAiT/cA3lQrSIUAXQOcO9jXeNJDyztfP
	 3mKdL8MqdHNIAHVkzrWavD04cpZfAKyaHKODea8/awYU8eB51g7diKLeGgUqo1fEsR
	 gh0Ub44SWYb6ajS31UX9u3db/Vwbw0O9oq9+TYsi0Cyx5YWCVdvkIxiq+sMdIJMbJp
	 X7CzKHATK0spmTedO7d+yUOmUIjdk9TqvyBrZX7xUK0MAzMVq1O76lzRhxn1qp/c8E
	 wv9ioOQm0B7NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6A0CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272799364.32749.3560362233774691437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c812b6fdaf591859607e453147e82c93d733882517cbfdf75bd683a6707c7aa
Date: Sun, 09 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762727993
