Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF72317E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69C81C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670371854;
	bh=rzdAPT66zAotCCoLnVyBfQceoQOlVkoF/9Alf9Vy3bc=;
	h=To:Subject:From:Date:From;
	b=F7wX1FmWTNBbQekWo8IOi0MSAh8NHST6ykLGmYPQFxI7TGtnUa2a5ZmCs6jtW2pKA
	 CSPLbaMrKpZeejM/ahMxGZR1fipCGSXomCp12jkgbHj2Zas3LmRquPwXhuHsD9cBrd
	 7+Y3C+aVseJhoBOTKE9iKZpq53DriZnSClZ0xiFb1MCrfcG2BJSvJKU0ONaXxtPfz6
	 r9yYGpgUWtyOBv+FtankseVP8fzfaMjmYwbGfPVDLSqKOhodUdu4gyRheLA4wdjBdS
	 HnM0Q847/dsJmxJu3oVRP7gnxjdh+HY/I7v5j29McZsJ3g8MmdnE++50Wdoo+S0L1P
	 lo/l/fXX3L0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A03C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037185433.23607.14714583534568272876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9205c33a3320f35c2c9b473156d3f6f896c2b541fe3b137f0c4adc10e833f8
Date: Wed, 07 Dec 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670371854
