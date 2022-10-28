Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD92128E8
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697D1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666971654;
	bh=CqTo/Mt6VBB1XkPSEOofYMAacUUKisd1U8D1eGPTCxw=;
	h=To:Subject:From:Date:From;
	b=PbQzLE/b1gOyh3zgBWg6hPR3aD4qGy65U2hui6mFTGk0W6LsRT5MLeYb0rJMImSfC
	 aToMuEgQ4vHRNLgMMugS87C1m6jH0NaciwGGD2s0dl/IdsYRhJZxytRx8JCZasX9bS
	 IYRMospY+okCALKc/ahM6c6SufmqWqqk1oHv1wodVGC+QSOjg1vNlxNIRH/ZxEtNZN
	 esuWprCUlOy3P2ZlJSuxvch7w5jM5/++crgyMlxi6Gud9xA70rfhnRkcLVG/hXFMhF
	 QVPKwQrrN1RR7yiX06jGERBTOp6jMqm8OtzGOplZ5XB1b8os2nNEqIYorjB0W3v3B4
	 kmyflqGAtI/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5271BECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697165432.9947.16224601537902018526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1930b4b527a10581c61c01e006885a07730c163e7cd9448e340950034f400bdc
Date: Fri, 28 Oct 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666971654
