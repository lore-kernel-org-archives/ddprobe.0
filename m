Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ED81360
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 01:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1D9C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 01:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681004465;
	bh=1Htzn+sfhla7R4LNjai/xaPYffgkosiGYhfyE/ajKHE=;
	h=To:Subject:From:Date:From;
	b=rndF1akeprCJvbMkesJriU4K1q2NYX4XA4B1QS2VK+wWTR+MIFvbZQzL7Gt2rxuOM
	 nNUi7v2VUkCvQp+wuktQs0cQqszMPE8J/GhcsiqKbJlZj55QoO3U0go2oZkS9eLqPQ
	 FODA/yHxGIWLO2/F4po/MosMCW1spWeQ523Z8xDbDQMfRWQ7BtyyodUuLyhvYwbZhy
	 laEflS1p0b+C5penfkLbeUpx5PIxacFOOoRkhvNod9lGDuXYZ4lBW+1JeGwsIyVLjD
	 9W+v/Qu4KQxhcsR+qKYvwhsvdeKj+T6ZWV4G7EHpGNZ2jAsZBRGffnq+EsgIKPj1R3
	 JsCNE6M+MwtZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD138C7619A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 01:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168100446572.2761.9894392531983919989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38543ca6fb3249dd352b48651bbad21c95471d396a19407e66e39b726927218
Date: Sun, 09 Apr 2023 01:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681004465
