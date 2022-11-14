Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE300EC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F8EDC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668394254;
	bh=5ys3wEtyZ/gaOgyu4IWyS1Vy/oESO3s1GIchXvr9ePo=;
	h=To:Subject:From:Date:From;
	b=nLn4RI834YAWvAuD5mg8Rq1+SwxApuC/rH1Xvhi3lt53qFP/qxhM3TEL4oQxCNbyl
	 +83XsbB1Nmr9o2vZeNJjAJxDIKyW/zmjgpqrWpEN7/WLf2RT1jWIWNyIcX6LjQoDVB
	 yUw8fK8h1VwLLaYcRFbvcI9lT8SMZNRprwQYVzIPEKuu73FkH0J/1KlPB/XgXk2gAv
	 B9FqkD1KG4Ho5XoCFQ9mavx4sr47LCUJVmBspxdz7yEKfZNvXo6UjyzwR0xK8sPtTF
	 APNr+D00MT+iGNZ97gAzt/re010h23NO6ENgGkibrQcXSv7TjyZ2Fu25UQf5SpAKQB
	 OOgvNPrRyx6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC0EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839425432.3516.18155418969294748527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09fb4bc687f540bd5132794569a39f8072f4272d27dcd31d1cbbdf68c1dae4e
Date: Mon, 14 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668394254
