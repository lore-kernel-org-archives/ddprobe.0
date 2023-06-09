Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645486D39
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 14:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE816C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 14:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686321365;
	bh=oJADwoka1hZFxKHnEZc5ndQdQSr0YQJxgFFIR+IDq+8=;
	h=To:Subject:From:Date:From;
	b=jG+0vDmCBmNT8RDwk//w201zKiihJID9OdBRzyoyPcxVdEgXmXmrS2f58b5f2/ZLL
	 9+8U3GmsNUu806HWAYSBYLEp0+URQiY7pBU/9z8bXIIvDwZbNbk+ETSOVTHKnQTv3J
	 oE88NZYrX+EJOKyuZ5Jk4KgMFgRDfDLZyo68CVl71TvY5/bq+CSxUy99bqhgjYZWkK
	 srMpCSF7Wf1vzC+7RlBh3q8zNF2VidHe1yOwFvbgARdNy4R1EjjC3DZxe9igncuKpR
	 Mzdaa3GbUOn0JkjMnw1nnpeomVrU5HT/eJ6szS9Ijkc/1OWXoxUqDPKiRiGpGBuniO
	 qRevRw2fdR4Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF1DC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 14:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168632136577.29505.4287483936971082604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6685786d8e0f5f2c972a174fa83111466052d218d7e9d029dc47b8244add2a2a
Date: Fri, 09 Jun 2023 14:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686321365
