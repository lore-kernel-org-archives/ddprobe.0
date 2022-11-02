Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA347ED
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A877C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667383254;
	bh=ifhkvD9fC+J7/yuEHdv3xqP7MciNX7wY8GYQiStGXL0=;
	h=To:Subject:From:Date:From;
	b=B7eKyVUA5KDu/Oit9/xWW6Ugm5tMBcb8ao26lWLkt18jX5/B0/USF1MYeuDOs4X+u
	 EtCkkqWWFRMlPC/6Q4kO3YB47uynWs56NozycvLL7EatZIjires5OD6nLNuXfOeWYH
	 blRExmzL0xlhp995He6gG3neBD8aHkPR4sMNpKAwjTKns2Dn5lqla5oT1M/Bd8keNh
	 1amu/DPShkSUAmErUSHAnuP5kKMtlFUvq+D9cHN27egBHtxdr8sfJ7LfiyD5vI3oGW
	 T2vePOMsHLOarLiz0mytFB9Rfu7f8DVCbPkLhlal7TdppzNlWwG+LTdC+C7KK+J0CJ
	 3/EuFYYFGOFIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECCBC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166738325431.9284.12013145606250935008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bcd566fa3efa9b7448a781eb35af4e98614240f979a839e338ebaa046b9ff23
Date: Wed, 02 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667383254
