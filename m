Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737433FD4
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05EE6C433C9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688105589;
	bh=e7/4kuZm9VOCAUxKqZ5FbFHH1X+qQ6lM0MxqbQXYIPg=;
	h=To:Subject:From:Date:From;
	b=ZeiLTLVFeMt6LjcF9Og5DzFBASMYTG/uZ/TaebfAXeW0XDe+jNNZ5tZgqxJSx6aig
	 Y9kvqjwHKQLQDDYOsveVmKMQ9K96WXenvnGfQ49GTV/jRjB2yFUadYIg2IUJn8VIY+
	 ocWja4+isbetU5eTukQNRU+ZYcXjSpvLa4u1g3G2BNpm40J7mOxuBLnJZzLDsHn3JI
	 nqgaldxvRaePp7znKbZXpbHbGN+1Mjm7SQkmNX4E8Oot8RTS5wX8ohp/lAlSErIvVL
	 OS5afa+CalHT2VoCGn5qZQ8ufAavqsOAOKPnesJYjRKYHS5OU/SVQVag/Sj3Vdd81/
	 Lu5m/N32ruz5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2F9DEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168810558883.13593.12497339473296624014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506d7aa532c9ecded3befde586619b7982f35482fddfc1a28cc1378349b83868
Date: Fri, 30 Jun 2023 06:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688105588
