Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B11826D4C0
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754588394; cv=none; b=UMEUtyA9fPnwVzoaOPWGpbb8HSPSU3vWz35duiOzkZbxgk7FashB85xHKrD7a9eMXaAeP2EoZnIFodi+Byhdj9i4H2L7zWPrq6cIQBdgLr3tT1pWE2Ag5BSEzexmZ1VUuzvZ6gFoWIpIFGQFTr7Hwv8Xqo46tuirihTxlwRPk2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754588394; c=relaxed/simple;
	bh=Kqswk5Xw8+d4EeX5/+hwCtLThYfm1tN/ItgEIll50kQ=;
	h=To:Subject:From:Message-Id:Date; b=q4rO1vugHwvVsy4nHZIK9q/cz8oyDAHvzE5939wZ2tI7PQaYrtnhtfXJooNe6zti3w3TQIV/hphmr0n9BTF6K9oasByXr1Iqk/6GIhYm3ayINFtG0f0GUNksafBXx97WWGdbRDNh6zkm4z4s+ULIrOD1S1W+72oCvjmVnSk6s6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+QqlHOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+QqlHOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97D2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754588393;
	bh=Kqswk5Xw8+d4EeX5/+hwCtLThYfm1tN/ItgEIll50kQ=;
	h=To:Subject:From:Date:From;
	b=U+QqlHOxhHZTQsCDVfdlC31GH6ulYYGxTorJFhK4und4rcDasHURtunNxgnTwlvD9
	 NBCBL9i2BaDmV49yZQyDrN3kJISyGBw1YOdbiqtHfRecT/wpdqxDZjLXJC70Ev/gpi
	 VNmqaAOaysuEfZhWchsofehDU2f5BYk41Moby+dnqjdhc4gC6asEtwmq6hU/JQlUFv
	 oFqlLBABpK33tK4RBkU17o0stTYy4iiwoNR4nenZJtZqBXjInt2GsAbFV0x68GKeJi
	 zs0wvz01LxbzdGHmd/+8Yarsr6Fsf4kfziM4rB8bXVmOkWLpwMIa5LzfECBzl1ymMI
	 06uMwRAtbO/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8E0C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458839364.22594.15788924514980552409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926dfb1254131e449b043339f8c95f9fd0c5ed08b64decc3ec1192b8f454c33e
Date: Thu, 07 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754588393
