Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9ABA443A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE6FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661703052;
	bh=lFQN2Vt9M8PNDpNqf/VbFHlHCpQ20wJ9MnA5T/oamEM=;
	h=To:Subject:From:Date:From;
	b=pQFmZMhAHLF+U+/qP1Hh8gbi93SOUjPQQYcEVQ2SLRgWq0hHTBGd/4SrFR+3SMndK
	 vPnLvM4VjyKOSv6+js2+isi5VNJxlr2p+SKjWBjfQv3iKzM2Y0EpqhJVZxUx/1IF0V
	 IwJsBLIrMPuq/uBDGq+M7HKtVzrYrq/AAg1dsibHjZtD1PLSta+XrEihPbOj0gUssW
	 E7bjWrDs3bbqHt6UOvL1LMhALlvgF8QCmVgJ8ppXyZbKlqQP7sNGVAN6ez3IGmMSUm
	 ly9kmR4Qt/kmmHihkjJdFb14tsIjZ5Dk902WvhwNZDfPgk4FENtnuo5QF1bl0JK4Ja
	 k5/8rtSREKoCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B86ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170305232.24038.993536005021216420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf56a6dcc0e2bee183a279ed2b01295166e6f88859bd80992d9edd546ce08033
Date: Sun, 28 Aug 2022 16:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661703052
