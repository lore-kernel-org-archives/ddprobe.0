Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A63E79C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 16:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D520CC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 16:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675440965;
	bh=DyWej7yd04X2VnLjJO8m+S+SFnLFdpv/PgkiFLeEu4c=;
	h=To:Subject:From:Date:From;
	b=oPvSDTlsDCUl2fkO1f2F7vtgmMHxJ4+9Jo+qlmbDtBbVkpUMoQ44iCzn9dns5XjG/
	 fAAiVgxAkVpGZQ4XtKu8akbb9mpDSqjcJOcI2bTnQF/DzMf6x+AsXwNeQEyksixRyG
	 5zIeGSgYmzGBJhqPYY+VrhGncWTERqtWhHp7wDHr4g0fVmDp5JE0kVIFNN6u8vUD3e
	 oaMtMLqoRfUzkbqEUMYpR92C7Up4qAxVq7l+XiaKHb8gHHU6hc5OWFGAL11Ify+dKT
	 OsA/N2IhmcO5j5JK2EHm7dh00f1nvAN6TYHBEWScXI2WbnD2ldnNOSX5sc0Xkb6wAZ
	 Ht3nmlQenGHFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9952C05027
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 16:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167544096574.5768.7368073910318555124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae75d14cd114b5196db4389606de080b2e67a178a643a4bfe778a0fda5d4b075
Date: Fri, 03 Feb 2023 16:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675440965
