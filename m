Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6E9EA3
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5K6I2Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52EBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698636496;
	bh=AQ/KZG2VyXBlwSaftvFPMZbez34eFgPSxiJRBba5s2I=;
	h=To:Subject:From:Date:From;
	b=j5K6I2UqWbji/mBTmINSjrAukT7Ucm5O42jWNd4A/pyaH7WNkKvN46+gh+hexHmER
	 tpmc6RpEyO6Uop7zcpSHmnGEu/guAIkdVaPAm0ZbV83Tuo2Ow+AAGlvwojFduudoAT
	 z0soLr63r3cRwJs4Xh0mLUkIPJKwe++L98SKg/61x70I2I3K3evxqf44HB8SV5L7xv
	 ptSByHWfTYa0xXTKg2Tk0dzihLEmQeXmoDNzV2sLEFWq2u4uIK9bXJc6psXmMAI1Xh
	 8m7dDmRgsIas2X8MvFm3YNMw79eYjGjAYnvsTVtHvEXlGNVavl2ZHz6tbnu5PxX4Jp
	 cepgWYCHYdOng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84DDAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169863649649.568.4936646765921027480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cf87610fad80551385e858d059654229ecb6a1ad4cc6a0419c32020901e25c
Date: Mon, 30 Oct 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698636496
