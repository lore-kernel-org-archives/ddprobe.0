Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA01C361
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E895C433D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662682253;
	bh=j+LSyQBqTvAZzGjw2Im1P/kTngyrp+qudh8J/CI3rJ4=;
	h=To:Subject:From:Date:From;
	b=iKWVJsj4NccXv9VF6M+sgd4NUvokS4w9fO7qDF5wgTAths9Zf92jvN3J5c7DN+RuH
	 neGdk5U2FB0oW5hMeAReQrayN4od77Y5Zc/0qRQ1v3E1fr/0Wb8JMY1DD1S7rDt7uk
	 xhAUzPGM2XZJFYqiokCELscyYUxuodsfjBFYJwApphv19hqetC6c91aOGjyQall6M3
	 WqF8M6HWV0Q3RzflZsdabpTHyrHEZR6wIypwjyMdOZB1+qOFRQNhjcupKofdkMGZem
	 /liidEE1+bNBHFMdC/hozyRhFa/RPv0kUKiF8d0POGDjBpj3WA8QpSjPtJftSD7U2H
	 e6NAYV4Zl1W0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DF0C54EE9
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166268225331.21159.16307567961342317171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6285f07862d626315c6cb7c7039d1945badf28b6f1e988768fe173ac70e0eccb
Date: Fri, 09 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662682253
