Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03CA361
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD38C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662684053;
	bh=kAjA93KPO3qOF8mRjPkueDX/hGrtMvay8QXHIomFkcM=;
	h=To:Subject:From:Date:From;
	b=OeYH0hMKAs6+5UVc7mvZiQ8dGaRFkm/0GF6qKLCoNMxBIs9lv4DhE3xQlVjRz74hG
	 0aadthvlqBz29AXa0TqBs8yI31H7WFoapTyDWC2NGUYYUWx6tSuuCOX0yI8St2/7CP
	 L+WYjXDpCJPMkoXRLVze6lvXci+qbuWmJiZAeoYQRGAooWPrh99iUDV049G1CCE91x
	 WG7Mc7y+7sZm1ESbYb/AcoygjG8wukDo6NN6maXWQbyQZPLIXeINkW2MnQ8F9HaHAW
	 l93e187fNHoyfv3Ub41sNP6UVdPT4PmRvXoPVy0BqbSrNb4R6N9KQZo5CIGPHc1Wou
	 TWRaRfWSLXHQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53605C54EE9
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166268405333.16923.10247147644387750655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60f00343a438cdb9b00afe7d72f5d0ab10ac8ee49ac867283b83041199e91f8
Date: Fri, 09 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662684053
