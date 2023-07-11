Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E275A50
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 02:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE39C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 02:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689041228;
	bh=AmNSwsdTLrlGnPoiBGU7kMOwBXB4NXyVTF36A1Ipvcc=;
	h=To:Subject:From:Date:From;
	b=aGFibPgeh6xWe2yq7I7QYhxFoL3qJi30XdgdJ6vHhBVKi6pIYdo7ffK2EVPDKK4KI
	 LpUoaVuRX+xAmfhnSY7ZBje/+bjS83adcIBzaYtFNokKtMMxHzxADPyvNOevdyha0/
	 UQLsDL/hhapKgK536XpCJhEUYx504FpjS8deLMHgEs+GL0f97VlyWaaRG+gzSxs2nc
	 f0oEZV1TN8/M0b65z3As0fC2pNGwf5QNg22hREpHECllotUOV6y6N0jod/15EGreZP
	 Fc18hxtVDr5SHLZu84Itsf4LxCq3sqCUHv3R2fCqkkjx9lqQ6FMzxC87GfwwIjCR7v
	 dJuEpSTK09wJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B045AEB64DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 02:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168904122871.32282.2260713833304295176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe07516c48dd9e9ebfd1fd0a496a6dd321fd279ba839cce86702fe86ed517c0
Date: Tue, 11 Jul 2023 02:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689041228
