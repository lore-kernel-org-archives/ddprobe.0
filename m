Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8F328EC
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 23:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F61FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 23:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674774186;
	bh=NXimEVL34wNgZIhsRl02m8cVG5YjGag+IvBA3eM15aY=;
	h=To:Subject:From:Date:From;
	b=K4lGVjcwKSGAJ9UEIygu0hVxeWVhna6tccqsTRTKRkJkrDGK4qEzN/SiA0FGVPRP4
	 eMozkzfOxh5Dh3/xu2T8wdJp5AqGA4af/5ipm+w2vw1omdh4Rj+08xDdECr4S2e4pt
	 b05bH0Gty+uV0gdACkQAF68P4bNxXomp1qyFOQcSuBbFTMcfI4zhsDBATTwIle3JUj
	 7OKZh68w5P6e4cxoFSt4nXCEP+vtCGq1QaHnXwILCMJTFHQORO3VAeC10kadDEzVuh
	 NsVVLr6k3vvtKWOu5+vZoIx9dkEl224dPnMj9CrI5Khb2hsHaU4DOWRMeHECGHKC78
	 ilPlos2+TQOBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0193BC05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 23:03:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167477418597.27120.2329340380652756122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96332fefc717d081c0a82dfb8cf365a2687147a3974bd3234460c9a77f4cf2d
Date: Thu, 26 Jan 2023 23:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674774185
