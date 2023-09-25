Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646DF79D3
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35A6C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695622508;
	bh=51GsBjfB9Yuy+6nfYPrPCwLCUHjlESuc9x77b8Zo+EY=;
	h=To:Subject:From:Date:From;
	b=m/ZkRPqrJqHihel2X400ISfwPpsPmcUIrSqknS9TpeJN4ZoyfF/OGfcq9Cu0amheB
	 fKI8M4N8zyxis45KUObglaqElSDYNaCYPZ6F7aoSFoIOYdjKNH/z5NmRS0DPv5u7aE
	 lTByLpdSETWHAA0V9bwGOUOvig4UHd278W17/9riJbQueL7T1yxXpIGnBICvp86cMh
	 8EC4v+Hg70tyPLW079mK57FPrifwxzMvo+Q981nUaoaz8WCZhhWfz/IUl0L4AjJQ5A
	 ROiQaXVOLF9mNL46/gJhouDcl5WlTqBE49m3b82RApo2QkKU80Xau8Z8kOqMOVPtVw
	 bSU0JhjwnubsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42DDCE7A89
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169562250872.27727.5689228996414062004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c4f6d42ab02d9268bcf96cb85424759a02bd6441b16157173cbacc2619b813
Date: Mon, 25 Sep 2023 06:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695622508
