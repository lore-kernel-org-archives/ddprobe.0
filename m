Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEFB6FD1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCD3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669132254;
	bh=+udhtKmOgwW+zb+Vs+sDPhTPZuo96vEkNcfEbxp+YJA=;
	h=To:Subject:From:Date:From;
	b=kRCZbvTooFplRr7+evjVF4+1kyYcUSHbCxzPnYVOtqb1La7kChrO8OgU4Zli9wpx/
	 7GcNQ/2WMlw+yWxmbV6ZN5WNV91DNp8Z1AIAbLJMkYGtZNIrx6IhGECeNhP9Icjx10
	 jTXCZq0yZjNgJBc4nWZia6EAWp1mYB3HVeMRl44fJUBC9DDjdBv/ic7XevTOoiiI1j
	 9B4S5vzYOlMpQX45ErTZ4d0hWrpwVk9ESTNftvv3MwhFEd/um8ATUdqRop1lGwhFbD
	 Ei9ce5J/RPeaq9P2K1gTFYt6e5z7FvOWyXJlCIsaWAb4IVlGVlIS2rf+l4LYScZa0b
	 4PX+/EmmC2B1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6065EC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166913225438.25684.7673385306210986177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458f5c899e58659cda9432953e04c84e1e269c7ad0831ca3efeaf7fceeaf26d2
Date: Tue, 22 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669132254
