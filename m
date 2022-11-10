Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1E91A629
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C0DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668108054;
	bh=jYoS3dLxtV07TCcLdDk+5SIp1FDqQMeIP9TXMvHFDxA=;
	h=To:Subject:From:Date:From;
	b=dXyMfps7/eMKJhLqLlq8wCdZlHCnFXyt31XbSYR26RE+SSUmVaSVnqSjbI+zPejYA
	 VUF6rRY3nck+qwFuImfmmbKevQ344Lqecmc7+EU7JWDYc6awSBur8vy+DG1GXG1mqU
	 PEJnhjd5BtJoRiDNLM3XDpY495wCGnFY4pqdfTZJ85jSRlHwDFrsFHohudTVH9DGDr
	 0+lOzVxvylC8z2kF0MaWHH/V6DlOukX+RwKnqEIquyNLVtA9owq7+Ciw36acJtryR9
	 /IcWO6AwTfOPzOsJWcPl75PmlftmBUI0mfBwWhxDdPaRHDrgmpct6v3+xDqawKjvKK
	 nwTbEbO/NwfUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD73C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166810805442.9524.437474673408731059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92152c5973c2abcb9e030140c299805a7e5fd1b763fcf5d1b2dc27d73e0ec71a
Date: Thu, 10 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668108054
