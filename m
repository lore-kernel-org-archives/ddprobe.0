Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1267E3
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E34CC433D7
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667378454;
	bh=ChBIZA/8uyKbZHfK/m1X9mm87EIw4iP1/BnXO0EYgWU=;
	h=To:Subject:From:Date:From;
	b=j1Si6FM9FUNzu3So5bEzknI+TBD7GoPNEBIzmc31iqjzRJHv18G8tGrciPPs/jNYV
	 qLjVod686qoFx3kZwlySlVIIlt9DRTT/kjnLCw1XPoWwsNg10z0/KsdnbhjO69mnZP
	 ji0RyxzRUR0+bO/+P1yJu6Xezklg3pEX3S/cWj/CRZkHpzNR19apmQhvnD6WOjyZwd
	 hqZOiBBOKuYdeqab+nuUfnLF8UAonp4UdqzGbuFByHQ+XcUOs0Lg2YRmCgHIExRo2l
	 06YadQ22GX8i1eosLEcmk3lR+xXOk1qR3Vj7AtJQktxyFsisoSlxpo8VnXAVc7vln3
	 M5dqUsYxZ9fOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546BBC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166737845433.16236.11600403552508132790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f9dc7612ffbd9e961856c3e38cfaa2113232c920ae9e65a4a968854d3f0b44
Date: Wed, 02 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667378454
