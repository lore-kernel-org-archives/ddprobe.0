Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D645D1FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726DFC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664597453;
	bh=sT4F9PPXUDaUUaZkBaL90WfCId+RGj4Er8L9dQ5t2+E=;
	h=To:Subject:From:Date:From;
	b=p/OSiNAnsm4TCVTJi0k921z2FNQx9vXhyhfSI2o/8wZg9rdiXLCH93JKKmHMtoaR0
	 33GzNf1xc80jtvKFK2/8IA90xg57ML864lbAtkfj4cZHewS6vz+7oaBzM36/IM9K52
	 XVIASjDfMzymrn/YNI7iIpKPmcbGdvpI80J1yPJcp4j2c6L84IIavRxDxk/R1PXUZc
	 L4XwtZhqe0wyk20XmEOD6QoM4CSeAxaDI1rJuABqe40mXlSXw1YUzOpcjtjrTg20RC
	 W886w8QO9PgTLgduoLkRgKmoaz78LAGEbY+4/OZ2P8Rw37vRHHUCjVSOn7dKhCdeKR
	 HxO9gNsztXoyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B93C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459745332.20222.16128504865580093295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc38e6856401be3d0ed842f6cf786138bdc547d2b008b6fb968f20366eb22ac1
Date: Sat, 01 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664597453
