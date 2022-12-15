Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D360C20E8
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F76C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671080487;
	bh=47yREWeAVjWZjOHecla3Ma8Sm5wpYWzjGhpcMXPmqzc=;
	h=To:Subject:From:Date:From;
	b=Ceo2mjeBSYJD+Rk82IL1eQeXSWIqm2AV56s+ywx+9O6OCfLWl0T/yP5+UZinnJ2MB
	 zPvXwhOf01KxoZUy+V+WZUfWHVVgKhu6+9qSC8LRl5pisl8EBdQupV9d58fWzpT81w
	 HH7UpTc6Qa/lJXIxkmdBeFyLw26RPcOA0kba6l6aA55rOIjBGVGgh5EcPcz+i5YagY
	 Jp50WR7vUKPuHry1Izt2VaivIjiRuuPGefelDnLu27X9Zsxy8XRKWp5M18dRVsftvd
	 RREo+6vHz/aOvg3FSJy2RWk+AFDNngPQWOJ0Je5s1X2adobw+oz5X/Nsmy1P4CDjsG
	 QSYfDo/xgcjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623A1C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167108048739.15086.9806450916052497585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ef117f45777d1bb394d0ca192e0056d51b170c743a51c36526c2883e117d3d
Date: Thu, 15 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671080487
