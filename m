Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6ACE370
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815D9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672029087;
	bh=iAPlngCzgzxVpE+13PaawvD+pwkTjZ3ZxU49/hw/71M=;
	h=To:Subject:From:Date:From;
	b=TumKB+AXxY8TygpcywNB4+jaFyUL56EeSzKAefrVP+wLxa4sfJnSPWON6oJvFhFmQ
	 Y7vQFdiGf2yEw+ywwVmLRp77iTLryo5MXds2yFz6ONV5usnM3lFK664o/8qEKnwI/t
	 16ExDfs1ahrcB4J6VeLJ53ICyVVO88/fe7TbEDC1qbuf4MpVdbkFwUj2gbhUZj+/VZ
	 Oo+tyfcpbKm3LvodUYk0XULMM3mfKeVoVl6liGRFC+MkB3Nv7So3fdditUAhWd7lMs
	 +N4W6BhFCP4H2NX7wHoM0JhcrGYH8ct9MDLZmoBVN0tAGjAztqSuf2Kbo+VIAdRV7J
	 6Dl8IjZToHhLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B0AC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167202908740.2699.18190329007185698062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80801534adf12fe8be6c6f86c1d0b0cfcd18f9da09b0e40c01829b678abfae9
Date: Mon, 26 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672029087
