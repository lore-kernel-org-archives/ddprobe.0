Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B4E627
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9699C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686880148;
	bh=EcYXtygdDFuBkz2XDJ4rVLKbTSEfVRJuLh6B0rxkupQ=;
	h=To:Subject:From:Date:From;
	b=Tgzq2cyUbi7x5Pua46fSeA/fhxLXWZ1pS1uiRF0ne/0y9NHOHrTRk5KJXGCbdh/k1
	 nBPJrh8ZrMh1s4O7v52g0tETMzww88YxsXN6ZZHi9/Wv9FOVgw9+DAQDALz3Rq+PIf
	 JxHGiFrOa950rZ0new7x1zlcPvVhSf0Hm1yLp1pWsgK4pTWfU3JvtHaNXYLAmyON/t
	 4ap/Q5sxiyvjyNlcAodLjH6oCbbZN/ipoOzX1+VWaMln/AMiUi6YzruvJFoSUEzqjE
	 SFz7x+MmXVOLMkM46RWdoBhna7P6adEAzjeYXt7r0Oq64MFA+qsnHb+aVUHDPnJfV2
	 Md6MRzksBFgLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFD8EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168688014870.4906.6298482080316355754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68f70422af309f011d2d4f621569d8def9202e2d605a6d69990b282f157967c
Date: Fri, 16 Jun 2023 01:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686880148
