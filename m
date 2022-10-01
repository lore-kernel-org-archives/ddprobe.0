Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50991851
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D467C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664583653;
	bh=/NphK7T2MNkMN8VJe1pZCFoxbVp6OcR8U2kIl5IsgCM=;
	h=To:Subject:From:Date:From;
	b=iwNXcdhQmmyhfN4B5esr2ako6WbO5LuUF6V9MqyoPPJC5fyPMLaJgjwi/wqBr7nzN
	 gPh/kzsX7+t8mYiYmWGkaqPe3CeWB+Ue7K7VwUwoIBKh6uO4uJ9OQ2ZMwVS1H4r538
	 uXyv8AN4PfhooJ4UxB1a7HrgHF5H9Aj8iKXpwkN18aB7dFnDSy+1Ic+TDRZD2YZerv
	 +tBautIIzpRNdJU8e0zg4AhL7Vf4fAUGwjmLTZHBCeQwrTf5AQiip4Sk6r7fiiDXu5
	 /kCss5akDlLUUvJApWmDf42R2vKpziTQornJGRjWpdqOTPghgpU3BcX42qvC6Hy9BX
	 jriSToJs6N1+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51446C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166458365332.26482.5064585806631775445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cec0fbb448d1b4c770378413ca703e7d6aa386b9eeace6961b237e586f1f558
Date: Sat, 01 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664583653
