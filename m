Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D555DEB03
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4C9C433F1
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672937487;
	bh=mY1GfMYGYocM/EvU4u8LeEb+PGYvrC32dCVQJHYLZTU=;
	h=To:Subject:From:Date:From;
	b=lAgut+IjycC/PcS9lCQlA/KpbbFM5jnfsdvgFp55tmM3+4XobrBZg1QzUqdSFa3gD
	 QhondLkz6s8UHJXT0JRiBotwGhpib3mhYnUM1cvIFrCRWW4HQAo3c0mnvjc2TtlMOs
	 y3yCvNNR3LCt5zMzzsMqvJKpsBnu8GmPXeqZilwYTRgaJDkVVM/0F97r+YIXwcILlU
	 cWlz7YbZsvcJKsS+oo4Xh1LXEcUVoJxD10w0XSVLd+XYiQURQuagWWUCrvBeFUl9Km
	 rvA1biaVDUPSC9vlYyxfXeTNSj1ic5FrV50xJk5la/0qY592hAl0tR9WTeRPy/N+A7
	 gCTkvOt1u2eDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 660E5C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293748741.9129.2746118516331914960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1211195b5aa28c4f7bf45625c8b1b1401583805f86144c28b2a4702acf5d4a7f
Date: Thu, 05 Jan 2023 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672937487
