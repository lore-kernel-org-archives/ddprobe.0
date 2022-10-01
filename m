Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C527423A7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70997C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664610053;
	bh=SXpirHtBk7UwP3QFrXtWaWbCm72rOgL+L/KAobC5jG4=;
	h=To:Subject:From:Date:From;
	b=Vuuf5MBGFCY4mTUXaYsfc5ypa+uJTXjzTDf00NWR7Hpi9AO2EZflaAkPYe8C61uUi
	 7Zyi4ruNcA756Hvq2QzJITfT8WPXSfot8Q5R1Gn8IrXkjpUDfSbGZWQVtS++FFmgSa
	 c2ertdzUMRfGlvMfdAISAuCA7RTdXfwIT03eiM9mNCi/dtgZuem7YueFlxkM5TlE9r
	 AZXjwiO22JPVHslE6J3gw4GCMmYrR3oJWWE+upWyruhggJuCW4NvF6wOoog5+gMxEO
	 Rm2BGdv3iBJ89BAOIbQGY5KDjNbDPcSJNZLQAkFKf4M17ic1lb26HhFBNGhK+rBrnk
	 QhUbsnwiWSwMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55548C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461005334.1261.2543405556746562272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9597462f3ee01466a35c4a7958ce4cb9617d0c5cde3e76a8736a1d37baaf7544
Date: Sat, 01 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664610053
