Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19367F
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75474C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664158853;
	bh=OIUWBmqjXt0TFqW4PNTSbqMokxGhkFG0iqiTJ2HcJow=;
	h=To:Subject:From:Date:From;
	b=UJdZ0ZWqAK/1IfMG9i9kPuUj96qijIec0qmvLLCFPNjOBX96cobyK7KRtB8bZp7xx
	 LdpMuo28fVOiF5AVNircAYnLC0irM3yqIJag3d+1jg2IsknOf5darcG9H/1oQVyM+/
	 NvmGYF2oYkDD2Z2aYBHSEJ3eTmKchlGcfNxxY/hvuyzI/k27rsU2QM5vfKfn+n39G6
	 JTVoHU7B8Q0H/gnHVq+8Dganc98yVKlXYyxwuHlKOuDxXEvnV4umuq1THblbOxiSNL
	 apMwF4siAEiSSDW20cPUWWqeHXG3B2y+U9vb8yHjNMYFs4kaQkbVp5rZxr2nRBWzdo
	 2jqnkE1gyLLLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD40C04A95
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166415885336.3348.16439738612834135914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15eb1f1339888a9ff1fdd0776114be6c640ae9b0a735eb9e8a9496d9b16fa16
Date: Mon, 26 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664158853
