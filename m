Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBF41C13
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 10:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0B82C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688813229;
	bh=Lvz2rYCcl+XQtBM3CQ21tXzNmbtvNLXfFyRuRbSYDKk=;
	h=To:Subject:From:Date:From;
	b=X8Le6cGY3Lgck8iVGz9mbv9bJx9s4vmBTZpwQ55UAR+vWzo9rWdrD01tbh6XPbq4G
	 v7lnOESqObNaecqB+TDU2kJbuCEJrPVude3eeydjQAvPOFkayXCAUIwbhPiOwV3Jzk
	 OE98yciDKGBu/3nErjnKJX+msay98/ZS4jHviRuegnBcq9K616V57WqFJQ1vLMMlDh
	 Y32W44V35NGt/c38glt5XGX13mm9g/4kw7T76EsAm1c0npORvNj7GoXKleIadjhMTL
	 nA/oxOEZJmMyTv7ZwFgvoc7IjyVky/71aYIt3+Q70kSIxgBaxZCddXM5/95H73a4XX
	 OQQ29Pg5uHhzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB58EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168881322882.13879.16949133308126663222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d37ff74ae5620c988fe3d4245fc44413547173c99cb49db04acb89edca4636
Date: Sat, 08 Jul 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688813228
