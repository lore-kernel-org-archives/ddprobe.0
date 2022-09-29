Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8537EA1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB50C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664426453;
	bh=3PW7uoD5anXxGNMKOOkGXPzQcNz3h3piig992Om765U=;
	h=To:Subject:From:Date:From;
	b=F6KBwxmU5Nb3btW1gK5yorO+PRWcieiVMZob2sYH+Z8b6PX3JuQJm4EVYlGhbsTbE
	 0VmdtC0wXUKSeXXvRs8Phj9A+18c02TT/z12yP07hTCAsXVNBTXbfKAgUzteAYPS19
	 oOY5zOXx7JH6X6Zi40qAd9MrPzN67UdZlsKtogi87aiRSLPjDUk3lFcNhHbtS7KsYp
	 3SM86jajL8CmamqPtdjF2O202E5+ufjs8k3Efq6x9JTHHkw6SCfQ/JLK/tAKmZLePy
	 +ELFh2XwrE3orriGBDMNvI1AAFrIdQtldyDjlAHWMk3hu3ITutB9W6VlVVOJ9Yqins
	 HfVokwHzejRSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535B1C07E9D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166442645333.1696.10089760655996709009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a26b6741830e61b164076f8f6cadaebab9c521f661535a5641e2ce09312bae
Date: Thu, 29 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664426453
