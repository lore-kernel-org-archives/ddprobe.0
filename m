Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D1723C0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4D3C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667031654;
	bh=TyzocIeuNxb9wqyJmkogVMDYxQ9k8D2+tNEjNXS8RUI=;
	h=To:Subject:From:Date:From;
	b=rZ3xx2PNdWKZ+XtSV7BKcHEopGq5nNAa4vVggVWNdml3smWmefhWH4kJnb09cTmah
	 icalpWcsP6dtVcgKk3NcO8EZMZJzW1oeJeht78SUy54N3MYhnmNvfSd8WOPrAS3KTd
	 mtHo7gNnfoy3OLzzjxkg/+NS6wbR2LyCV8SE4h/a1tomJdsSKyP8ShmC2CLaQVDpk6
	 J/B6mCiOLOh36XJZHfmmcZ2QU+urb9gnsw/dUDgrbfQEiA6s2ULAm2YS2/SHWenuRO
	 2Fl4a2tI0TJRwEoNMMc1sCvYZpSpx73cxkZb+NviIcGJOFWLFLsbvNlktZ0OkTWmQm
	 g6Kb6ej93KbGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5045EC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703165432.24147.18226190868798318121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17744a053a22a9d9e8b49fc879ac1b3803d921b261d72ebb5df93fd4184e53e3
Date: Sat, 29 Oct 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667031654
