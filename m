Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E3223740
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 12:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9K7ArhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AC3C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 12:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697458628;
	bh=NoF6QMDSufSLlktcmTUUVcYP1v1fyUemkkFKa8vtBAA=;
	h=To:Subject:From:Date:From;
	b=p9K7ArhVrindq6SIN8VdPGwJbl23QASz9w09TLV4x07+GIQc5XCZqDXI9advCx1fN
	 z37LEibk+IX2Kyg0BJ9BUDfxdrkWafilKEFhuJJ5nlYsnf3naGCPN0mSftGaTVh25p
	 M5wzM3Cgmlf4MTBOeMDonm40/V4mYiS/F53wwnPRHmfUX6c4jqJahonO9obPab310p
	 QyQhFB2aU3X31P4X809MYbliTQrHkr+iHmuuddqDntY8glfJkEYitqkTYhyd80KOsy
	 yzKoVP7wMq8FerZUHpRmtQ1YFo4sQVJ8zFEY12fhaxB9kPJV6JP6yw+GFu8pMniOEk
	 W8Zox2uca5/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9168CDB474
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 12:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169745862868.10351.751823719865968115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebf621db342b0cb38b6c792b20e5fc2cb433d82ac44f2ade065e35924e4f3cd
Date: Mon, 16 Oct 2023 12:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697458628
