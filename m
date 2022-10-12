Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65ED28EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7021FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665595253;
	bh=TCohn7mzw09vvOmqg2Jc3RNQ5/uFZj9UlttO0XbqfDQ=;
	h=To:Subject:From:Date:From;
	b=LQlx1b0hrSrKump/JqWAVwjc8s1V3V1dJ5gaA0ZFwyD4Y69psKrqilmAUde5nINvF
	 +NcqHeEE7C8tIaar5UnbkF9/SYyIZiJkAVeW58Sl0Fc7IwUKwsXmbo9j/jA+9v08g2
	 vb063soRc4F4m8n1SDJk5P3Xqv49GRGq1/aS9ZnQUwWic/QgUixgb5FYLzPJhqXLxA
	 RgZTCpaamqkzFeXnB/BTGgnmoTfPSrymxCWnDQO7deCeZ5oQWXtbo9jKTv50NMFJoX
	 +Qlfa6RKwgZmYCX6VlZPwkTEPvHf7mv3fhvD3HkchVjhzufyqJCCW1Xy+g06p4KaVQ
	 Ohe/2aFa1cv1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547B7C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559525333.21711.12797647143433168462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd417f8cd83751258ff2032f3ad8b2fd88a342117326031415868965ca9f578
Date: Wed, 12 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665595253
