Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE337C
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69306C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670033454;
	bh=fA4uBaIyknGgFchbyIbQFA1CFEikHcWMrkzwn82eEVo=;
	h=To:Subject:From:Date:From;
	b=EpIh4eKJ6F+rNCJRL5LEajUV6od+AtRxoGBenfgANI2CO/s7SsPFllLRtz9vu/mhN
	 l4XErn9MGO5pDgfPyYzT0cKNsUIQZGtcPI3pqlCCI2nfXmK22xgkd77U6/ZyNbT0WB
	 3HDDikpsEfooGyyvtrLIJx69X/lmijNbXwl3Y2VSLzW+MMoJM+7Wep8jIVBWoe83Ts
	 UaTloG+1NOVY8naCnrZmqrBUpuOnJTDhaeHUlno3TyO9CQB+nJzcqyqFzsXkMPLpTL
	 vhV/K+UyYGAalGR1kFwvE6yMPX/nUD2+RAc3dOZ1k0nfIPx2bLtI3CLrn2FMpM6/Xi
	 w5fqB+qvlI9XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA2BC4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003345431.18666.4548963436795737569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eaa2c922cdf02d38924a576780df1f148ca00530992a99fe6b82df615258d84
Date: Sat, 03 Dec 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670033454
