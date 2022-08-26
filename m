Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF07A23DB
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DEF9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661499652;
	bh=UGJj95BDB5AlWyJWHgk4ozIjGUfVK54Lqj7MKrZK7FA=;
	h=To:Subject:From:Date:From;
	b=H8xOgq3NzlHIzx35PNLVdw52IZsLYnuId/yBHfGkK9I2MC1w3V5VS2uMzBPmLw9O7
	 sgLZ8b9CWbittNpRz7YOOeNg81xLRJ2ZOpe/nG2ONEwa1ykK/Ius//YPYO6/dxSZ6w
	 oesPmIR3kfUmJ3g9vYturQ/mOsyizyOLDcrjbdIHlDiGxlp5FmW8pP7/gfX+OFB3OO
	 5Hba0p6leywsx/gT4zR2IE3rZlWbXRa5usVci+/VNiNZna7RndR5QYpY1WdDKXQ6Og
	 qh1pD6xz377klgS/vArUYR37PqUMrNYWQ4SxsyyNtH6MikFW3fypn0gG7mtPl8PLzZ
	 0w0C22FQAIB5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE94ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149965238.25831.13594871572693275514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981568e75cd87a77f4cb441c7db0ee46655abb91d423d5e9b915815e76076fbf
Date: Fri, 26 Aug 2022 07:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661499652
