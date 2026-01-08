Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04955279DCA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767916434; cv=none; b=O6RBdDXjYBGeAjiwFIEXFsCOq+0vjClRRJrn8LeJgfwo9+w8k3X1hFUqDcqezbE1tl5Y1iHSqdkeHZcU/qSOXL91KE1NLcj7me3PEKnlJCuKG5riQKIliq1gutqlswp1iX4TKouAA9EHLRQqXzHpwDRZUMWIGwu9h1lTPUAuxq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767916434; c=relaxed/simple;
	bh=Wf84Y9aiRm0PanfaKCuXtG5XB1UFRziw/JYpw2gL+J0=;
	h=To:Subject:From:Message-Id:Date; b=lTWTf4JhtDaKoY24u1rMq75eBhsX7TOBya9xlg48nH8duyRF9/phqZflw57wk5sIbu2ONTCIsakTEEIbYnmLYM9b2krIt8A9PRbXGT7Mx+XOrnFpyZtw/zgqGGqRx+K+Plv9WXOe9QRUUkhtk5p7KvzYP/7z1Kvd1YopCJUaQAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ri9roL3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ri9roL3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE3BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767916433;
	bh=Wf84Y9aiRm0PanfaKCuXtG5XB1UFRziw/JYpw2gL+J0=;
	h=To:Subject:From:Date:From;
	b=ri9roL3PULwvS3aVVzGPt4M5hprBJBE1dhghtFwlU6bFnYdN3To0o2Ix3DRglPCY+
	 iV1Uds1tnWbEr6VQwJw25n/qLSSK7qNtVHbjCUdUJZJe1gdBvDfr/vepuLdVOGrnTo
	 qDqtWwbVVlBi/1vMhU3hGbtO6wgICfQ9Rzj1x5/gmu3uVqIreSo3U8BZ0BNf2La+Ss
	 oUXFEVBSncDfQ3kqsAPCXzU/HDUNmwXXP5kvNklTGrn/unHnSg+Ra26lzGGPCWlYaH
	 5Yv4HknB1aPjRMxkQM5jsB7qEVcfrWvdmhYKD1CNqPHunVV3dSp8mMWaUm7DTAZJGW
	 SQviQQ3hKCy7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB2D232C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791643357.24685.912004581388143019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997713646aa0cb567599fad3e6e6d6a76e95df972e548734378ce6a482e608cb
Date: Thu, 08 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767916433
