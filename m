Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B182F33
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DACEC433D7
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665419453;
	bh=u0Jjgw/hUYO+9Z7T1oQnvxHjWPIuUiTGGYqhcC98wGA=;
	h=To:Subject:From:Date:From;
	b=uicTkflnsvQybasNAiJpns4tfqLpUmwVOBX0s/kwk7tDgD0o2eJrKNipU1ZkTp35/
	 Axq09RIYUTRkYHuNEzS032k1Nda4HrFsPUYKav5Q53sB1D5l45nN/Ux0vs5FNG4odl
	 bG0BWj6WVpAkEUHvJ7lZ596BtxgIAGV2yTtNvYGL/IwQbop/Gm58MQFWEUhkGQJiUI
	 TQow8nSje/wZGclpwpaFZ5TgqmyanXVqOS/cbi9GVr+KHLjZOtd6t3KVaC87wXOmQD
	 kYydlAxn3O/1GRIvcyXwpHEoAdHn0MXYPSTcFWuvTaxaGBzADWwAmyIgzIaPHXRZfD
	 pQfV6HQPWyPbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54957C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166541945333.25790.14390579606194164005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940f102fffc949983fa4dfdae69a336bb083055c19b911e5c1819964f92872b5
Date: Mon, 10 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665419453
