Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAB9154B1
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 17:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C09C433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694451848;
	bh=VCsvs0VjvzRoWsdS8OtwaxaCUR5fGRp840iXvU2uHXg=;
	h=To:Subject:From:Date:From;
	b=vEXvdEVEHDdqiL5vpAnTkSRdHT2E1Q8Hmm4ymUkYacQmFUDbf1VNxywl+snjY1DwC
	 MLzsKNqn9G/jXRPjGgJhQ8paZbKQ8S0kY07eO3AQX1DL2JZxieWh8QDdfZ42CKzvmC
	 t4j/4iya3o8udR68wWoA+QzxFlSDqDRgu0B/WS90rudZYmWdZE90InkjnbGzHikC8t
	 XdsjWwB7pCilwiU+grE6gzmydinE7Ch7JOd1dH/oYCSnJLyXCo/gTRombaEiyh3QHj
	 8QSLO51OpvQJAdYsvbWi60eGdjog3gdMfAC2YbHvzciZziScjlDsrSZrFSC/FDcrHw
	 GZMAL4evQp6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB173EE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 17:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169445184872.26060.8463587013048547412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b53eed618ad905459a582183554c91dd301416d8c233365d82095e706080c9b
Date: Mon, 11 Sep 2023 17:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694451848
