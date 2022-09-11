Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38997F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6747DC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662917453;
	bh=CjuQyRIOWlB+WAIShjgSU4y6QCJ4QiXYHTOsOqrFGIg=;
	h=To:Subject:From:Date:From;
	b=bEDQ510+HXgcCIu/w8eJ30hlP4XO0IQn2rov5yOQrYH1GgYeG/TNKTD0bh4HmdjAn
	 Ow7+t99dr1ZH4iiVdbU4vsTapGhtuEQ9Y3Rk1rhfu84i8Vv9s2YFlLhuF0z/ZKensV
	 wG+8gSDGV7ZRxZLuAnENByn2lhY52DL5ZTObKBudqKOabSo4A9zLPipVw9Sd/zVqEc
	 Pya3pYJOo+hsBfrBFB3p54xUP67EVb2unFHMzIVT6X16rNgL0YAWgvztBCaKZ8EAi+
	 PnSiSmDbq18CaAnKCFZaGhjndWBzCjqpazt7+Y3BwC6bqpGm21kBFAmCfWGiiWvpfI
	 g0IsCnmFBY7TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF51C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166291745331.2050.15481291832529730570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de51954df54754adffdf6b9c66891ecbfdc46bda624f9972fff09809222b59a1
Date: Sun, 11 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662917453
