Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2AE21E4AE
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712090897; cv=none; b=awh2e0/grffk0wVSzY/PxkAkPfNOBZT6ihB5DGPSZhGf/O0DgSyoI7QsX2P8dzqeWQwLGf6hLSMWZ0u6h06QLE8IGlw0OjHbDXqELn4yxXc4fQ2ZXmsP3wXfF3Jp7kRa5Hn7Lbl8T2cx0okvgxn6dOrMLD/79L+aABj2m8cVhCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712090897; c=relaxed/simple;
	bh=pQGLLJwBrBgIdMhnq1T6suPOCz6T6jZ+ky2zKxklfT0=;
	h=To:Subject:From:Message-Id:Date; b=K5agMaN+cgJx9hSQulTSh4n4yhKcjrh9AHIzmXbg+rdW2v0MIFcbPe4stDRzbGIgEfaLf2pdc8PrUdhFPiB1Pdkyss0u/sRd/lGSw8Doms+IMYwciNCIL2eY8szbom+N3+Vc5whTFvTOu1o9tBjxyttKFVUoKZsgAHXdNpF1K4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bjio4uwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bjio4uwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7708DC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712090896;
	bh=pQGLLJwBrBgIdMhnq1T6suPOCz6T6jZ+ky2zKxklfT0=;
	h=To:Subject:From:Date:From;
	b=Bjio4uwAVJF0evkMxYBJXHrPyGcs5lIlJFZDBgmk9owQL098bFj+vK5v70t5nyuZC
	 m0q8w/tywirEpmCi5zp4ETS0i4r0uOQPmydM/PmK0q+ZT7VzJZZexV27GqtJ5SQqA+
	 WO9kSRN+disxzhP/2cIgkqP5ewKG8Pv0dwy2H2jvQf9dVCigqK7aYreGOmkke80vXs
	 f/1QoYyGv3fBBF8PGPTzFkU0ZZbLMVwy9OhFScp2x+bCRHRo5AHf2TcpOckG/cXL5w
	 /DinwnMPVmpMO7wPbnILi5kvADHmn6kgppaY03dbJochZlTka/XETGA/Bxpfl9zAYG
	 9xxCnQZU9I3rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69329C6FD1F
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171209089641.19623.10289331287511281755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9479cdc44a18d552335bec94f12ab7cd41198b8cde13524d384255afb56570bf
Date: Tue, 02 Apr 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712090896
