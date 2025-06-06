Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3477242AA9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749192594; cv=none; b=I61mKlHInAGtiKf59l8fKrIoB7OqGAGIMoZOJ2r+Y/dSw6bvbwjMex9lrLW0/EET2iCjS5jeialXo3UyRq+j3pvkZwUiEVzamOjzgMNECT2NhZzXhdP2uQ8vtgCoGTEd8AZduEAgLAVrOUX9hoBCTWh8oC41FTVItPFgkB6LQ18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749192594; c=relaxed/simple;
	bh=BaHM6ICrSC6B3G33CiHRHN/Hy5h4X/ATHSd9IU7p2CI=;
	h=To:Subject:From:Message-Id:Date; b=WPXDvY5j+J+gqn8AF1yKvaIE5648rXl9lvOISmuvWG/DB78rn36d8Ge40b4LGU+wnDOy2NwwDpdo8ZvrVcDo5k3CoPrFkLrNUz6SctnpZhyBCOgjh/wI5gxVtUzS/Y4uqsY/cD+fBr6P5c3IKF8uoGAh48I2na1a9HdPg7wJ/7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBidExgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBidExgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC52C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749192593;
	bh=BaHM6ICrSC6B3G33CiHRHN/Hy5h4X/ATHSd9IU7p2CI=;
	h=To:Subject:From:Date:From;
	b=fBidExgyX4VJdO9yEcoNFbdwvctfIMqy4lzNcLON+KozQ1AHbojFGU7nKuSM5qxrC
	 2/T26r0nv0k6m0xTF6BhNowlzd36BPp15Q6deMTKBliOce6xT2xuaph4SZGFXrwlr6
	 Vr2yBakJFg/OXYQRgXpRyM/nYNo6AeKz8/zd+fqZwTTuDa1aB6Y0MSmhkt/jHMPIqX
	 QF/FjTC/m8oji0MgbiYthPVYYNGJbImoI1znIvtuxPeX3hWafWD3ZvkhjYmo85jFNJ
	 xFHM2pCb9FGH6R4ZEhoGMlhS5ewHQ5G0nbqAiNnpSgUkDP03g25MnoR1q9Tqmgw9tM
	 crX3jrfIlnjVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6FC5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919259358.1173.14460921832423845859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09920e3fb445efab625190a1052432d02216f6623febf9426091672420b572b2
Date: Fri, 06 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749192593
