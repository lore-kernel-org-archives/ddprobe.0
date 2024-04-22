Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57006F9DA
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 03:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713757223; cv=none; b=cIcwqU7s75q7kEZn2ng6Js5k+A/HTaBHmzuFQNy/8SoXVTsTyMabC5miXpF5Gcg7tcq4NGiNuOIIlExUom56zcwH52m9uyVPp5+Kw9bsyLJDRzAQ1+2eIqGS19IQF0g6yuS6rpj4KrNF7bw7qz0dm7C5fqBRAsstS0lpo+/MNUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713757223; c=relaxed/simple;
	bh=A+Z7rtmds7yJg+Y1V4GeWRBJy+jvBw4yG2i4k/NUdA4=;
	h=To:Subject:From:Message-Id:Date; b=M+vp4yH52FbBu6RSm6M8Ub+aqqPCAkVL15GJ+j9g+4d8SR5Rn+Jx8eDVZd5QuPJNzhXzg64TWnHCETXUdt75C6lCyIrTAUT1KwxpCTGE4RCIVr6jxUuw/fYP99oWHw4nRBzr0p2RxQGwSuCxNJ9dkZpDe71upRe+hKdM8Wv4EQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPvLC7Pj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPvLC7Pj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD89C113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 03:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713757222;
	bh=A+Z7rtmds7yJg+Y1V4GeWRBJy+jvBw4yG2i4k/NUdA4=;
	h=To:Subject:From:Date:From;
	b=mPvLC7PjneGbjuB7kvu8YE9qyUSXeM5l2fc+AO241ql5XPofPsYh4A+7xA1lQpDwW
	 PKUcC8XAE7CL3Vzvg8kdkrwvFOzg+XONCgJKjTWO5JNk6jyWMWMKth3v5PGHdAT0lB
	 7hW6rClW2LiWjw0eCCuPOwb9MIXia5a1ogQm0Z9AMD0jH7OAU+SV4XsNWsZ9aVcuSX
	 dTCMwx9RIu6BecBjXLNpAk2fGuwrGpqo306aKB0cn0jWByluu6snNdEJi44ctZ9Ojk
	 BOBy8Dwzg7yzHGsVGQ+bgF03oWNiHTihQ0/Vlxs8Wu9LDmTvFKVoQq/zhyrnmFo75S
	 u1S0eyU/W3hog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EB4C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 03:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171375722280.6492.7481754706296648896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0522bdfd2de4dee5198686362a81a3f075c24e8bc20f35742ce1d9348a61958
Date: Mon, 22 Apr 2024 03:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713757222
