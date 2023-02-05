Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41813256C
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 10:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD156C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675592765;
	bh=uQ+ex4cbaFvYcn/UlKCic0X1FEgpo9OGDIoQPmRyrAE=;
	h=To:Subject:From:Date:From;
	b=VqxB8l3Ta9m30/jgYjB5+nmp+YFOKjK7agRgPSagJ1db8DghgJtkE0yqv+BTo6n0+
	 R6HDjzTFTbqZtwOLC3JSLIN4hk3qTUTVc8wojUoJLrHhD5M+R6dZOaADS4gF5FTMyW
	 Cqwc6yVKgD/iVZNEyUS29WLh/ngwqU+pbWUpqycKQ2ZiGEg7i3iOs34TZcqbjZhuW5
	 t3o0G8+IRTMY/8et4pocErD810nd+pofsULY0uWUqbkv36fi7RMBgk1sdUM6Ef+8a0
	 3ac1r2TWVGcaFnOcePDwHABD0cIrQ4/UVDfaflpdPfgGVarkN9vkyylKNqlqyUELyt
	 ZNkcf4EfkFsdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1ED2C636CC
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 10:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167559276576.12529.15581578885331595290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abcc4cdab536db9a27fe691399f48b3586a617c00d07363cfb60b88c33461553
Date: Sun, 05 Feb 2023 10:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675592765
