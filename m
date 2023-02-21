Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550BE23C4
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 12:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BBDC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 12:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676981345;
	bh=BQtRJUUbnQhBZXrB8W+i01r1arcZjsWIak8zJINfaUc=;
	h=To:Subject:From:Date:From;
	b=oISlibkVPuEXUh6EYsKb/tBmiYJKKihUM2UYjlZUoNwiXAWcUfzpaAobNdXEgQYyJ
	 YNRZRZJBwl5smMZTkcZjk9MN6yuVk4B80YDPQrjRiWFuD7p7lmmIG049S31KBH4jrq
	 eYSs4d6asda0o2kkLwgkDU2GyyUGWruWOOaCtMtV7Etj0d+Z5e2ogKyzp2hp34IC/B
	 E+DK7TJWHJH/Uw+kK9R30lmtTz870pwhsj8YctqY1R9LzuGhYu2kgwev67gRZWgFry
	 uArzxQ+bBiwDruKlsJMrX6RqWBuUDeEsQG34xgeAR86xoYLM/rhvY8xA35+AUCcty8
	 C2zJiTaILwR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64C2C6379F
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 12:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167698134579.1233.1774047095768972100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e132877dfd62103d5af8f0f53d819dac40dceb04b31560f3fef01ba2507e37a7
Date: Tue, 21 Feb 2023 12:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676981345
