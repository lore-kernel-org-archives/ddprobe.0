Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9879468D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC3CC433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664223653;
	bh=WpLihG2TcoY5c+5kDp35MfykfZlu+GqPdH7bz9ugXXk=;
	h=To:Subject:From:Date:From;
	b=q3zqlgv7KBqTGip1MQXQ0UioEiUDy87hundAhLXEQJqKaVwXAzvbnd5DQpjuDkul8
	 uVRAtq/Tt8I5Bish1DTBoqrPY1v9vn3hCl62sZaewdV5/0Iw0RRw8Voy615WrGHAWt
	 QMwaxxwjuDXat5eEuqaGRl09I5W/ZAPAM82YlsSqon0c4o03mRJg5eBH5Tovmf0e2X
	 NpUii/tx1Jm9YytchdH14MS0kM1LPhPVS0sYJksPvdlLp7VCto3BGR/cidbrYxBwaw
	 bO8puRT9UyhkQ6T/RrlFf+yRE2Ir/Woz0Otjsl30RAN+B6KhieuxnyCj66SWNtoWuG
	 J5HdXqHynHzBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571D8C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166422365334.10547.6057468668376139490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e433d48b529e875e8e7650cd29804feea25b6d46756d6e6b851d9fa51699cc10
Date: Mon, 26 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664223653
