Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DEE15A5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3232C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687409588;
	bh=ZevC+OL5jIQqonigikcOv6+jCd8mzkuBL5LeMSj0G5w=;
	h=To:Subject:From:Date:From;
	b=SZUlOiHIwEvRtzQxgV2wbzprWW56FTlS6RHfma0u6YTY1K0EKiRSG1uY1Jpg9/vNt
	 ZDdWJf26aMmNnmvF9vmNJw40NLmMUbZlvlAsmq7Sht/dZJhd500wSZQYJUEoRs7Io9
	 r0R9IBDdwfFO/8h+a0BWY1T0NxrbroutQqnZJpegDafsuqVA4X/4YCprAf3opR+7Dv
	 2iKhLHb+PGh6uAIJ2dwuKzRT58oKUQn/VMpGHh//V6ZBoxrHg2gDJ1iCrzLkmY+3L3
	 l9ZEOvdHHyB6Mpx8xZSvULeo1GXoCBOngjxoJ2HeqpXb2rF70F7qM2jqOJ42UyvURY
	 PH66uZ7IiAijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A5DEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168740958873.2303.3244707667210158106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b918cd4c859a1c17ea02c4061312aab5a85e2263915c40266915271143098d28
Date: Thu, 22 Jun 2023 04:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687409588
