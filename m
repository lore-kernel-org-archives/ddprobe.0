Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AE663D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673710887;
	bh=c9zbeOSyEyK+SMY3qGi4vIKCfU5PkvP7cfgC9tto5RM=;
	h=To:Subject:From:Date:From;
	b=Cp5cb2dDKLHqkFJqBw6ugEuwNowFTG9FJnJjehnHS4VMPkxW/lI90rzjBFgZ6ZYhJ
	 BhGu+/gVZq5pv/qe75TLhKefz8XJD53GBfSv78aVZetlltTskBgPieEcLPEzNlWucN
	 ffID3e17OZRWBYzZu35JQelYKoY9TVjzykzE/HpeMDwTrRkQtHg2CEn4XigkAgmbnu
	 Gd2zX4AlKLbhz2opXO+G1VnYeyZvbceugQM8DBFQdEf2+YzqsmprB9sIHhhaoObwma
	 M/7pNSlxoKLaaRZStnbj88HBZ3QObg9WDvDaCn+fH0y51OnvlUDKzB46rbVhYkxwVZ
	 iloxSszhp0w+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80CFBC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371088750.7170.15361542271523382728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa631eb6134d53b985afc47e0346a85dbb7c71e83157684923e9e92122699aae
Date: Sat, 14 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673710887
