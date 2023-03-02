Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42833D524
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 21:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF844C4339B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 21:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677792366;
	bh=vFZTDR3Ak4zYP1vPs8F2vg+tvRILiPXqMNUku0vR4mw=;
	h=To:Subject:From:Date:From;
	b=Ya6PJYYeFXsppgXPBpC3OL5K5YW4nnHtBQjkp8OaCu5fvyVidL5+bc1nC3YDQRV26
	 yWU+62e5w/mDNlvYYg6V2dElblcgIzNfkw1vNsbgfRoE3aHggXQyxTADvM5ObiGkGG
	 5mZfODPkgemJOk9ZfUh1kZrkKB8NZKcHdmJtsh/I3GKxWw594ED13tZJP8+8gkAJcn
	 xGvBEUCCf9v5m/b9rYKQbFRPvO9fC9TYitN/EntygAOijuoG9XL0tiOly9r2Nz0ffG
	 d2apF1VCWwJRxdZTtQ+4MhDtRLsJjPMadw0nDAWCJoDhxHMFsKWOozIWdFSDiD1lZh
	 60xAHPjutECyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB10C6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 21:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167779236582.16815.16356755726851436619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c852a11477c9250b2547f63826c0189bf3bca60afd0f790aa40bc888ddada2
Date: Thu, 02 Mar 2023 21:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677792365
