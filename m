Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A726123
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 19:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32F8C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 19:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678908605;
	bh=BQPfsa8JF4grYVZBK6bJ0HAhrBsbLRupHR/OwE43k5M=;
	h=To:Subject:From:Date:From;
	b=WADMsUo5aYEyK/XKrojDXBHG7Na1tKgKahRFJ9WpJOywD0NxlOzvSBjwdZBdPEOj3
	 J/WciIzzqymGxwUIrhvRtIKfIH/EtCdoBO7BP/LoJkLUoAf8WuF61jsb81kppFCNgU
	 KBuJWoN/7/Xr9KcuVGG4ga9/BHc2lR0Ox5G01t8vn/6wgQTyRzmY1cQGUsO1p+kTNG
	 Y0XZkIbj5y0Vy/9B4Xkvcy3hAuJCIgVbk2kHEHXnNPy7U57SaoEuDPVu61xlPSHl+K
	 QsQqND9rGMEAnZ5pZs3nZyIVKuPfOoWp8GJJkIKx/LQOvr6OSNwB1fKe+oz64icQxD
	 UuBVT1uiLZJLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BBBC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 19:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167890860579.22731.9433687305904402169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0434a63121b273af3eccacfc44f78096113d88570a33bd5f4299825389da09b
Date: Wed, 15 Mar 2023 19:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678908605
