Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88304C71
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77836C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662408653;
	bh=+Q643mQKerI826tPbvAPA4AcsAGwG3N14FVwQqthA4I=;
	h=To:Subject:From:Date:From;
	b=S3Eb/D+gblBKdwxO//vXK5VPcOmk2boPDczzL3pEnN2Eo8pklpPdAwjuaXQfyrb+C
	 zU0X1IyZLevWCGB9W8XYnAaAfc0NzIOj/yGQmeX/4ZuMsdS8At/3lA6Q92SSwFJ25g
	 eWbuyFGFtbULJk5sGopN/tadf8C6Bxo3vEvDNPgo1KwK2dK4Chn4DT2eRrhmyvF9jJ
	 QKSSXSvxlMGJJXHkG5kWVihjA9ddncvhC9QJYLoEtvQhzpF6FJO8E3eRO5XFp2oao+
	 7+2G/B3Uk8Zi9zZZuxs9MR7ZRVX4Ct7b7UkP+tND7cfydgrK6UNzH2tpkXDzBu1xTX
	 xmaU6OVu3EL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5848DECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166240865335.17878.1679160144703786417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29372fa235512bd00d6e52b71de03704c7bf6fe89acb92c1a9818c87e8593d73
Date: Mon, 05 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662408653
