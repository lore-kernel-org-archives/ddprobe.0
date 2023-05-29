Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590987E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 06:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02438C433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 06:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685340726;
	bh=Q9xzYIVlLcaOMvRGyadpDCUR0iKlAjT1eQVKBn8eVL0=;
	h=To:Subject:From:Date:From;
	b=MbxONVddnb7wXdXVcn0rd7XZI1SbByzwMhWqLje5vDXmgXb+dEz80WH6G8dgo/3Rg
	 wruLbgN0Qz/e9mwd5+U6KhtRjFO9zAreidNdQwdJW9/1mtwsiPmNon0lNB9JYIFHOW
	 llNZcP5xWvh3hCn2j15zqZm8czqU0xK5M1ksn5LKCNMc7l7K5L/9vLbSOB+QJAggsK
	 l0MtacP10hPmLdngGWk6WhkHP2O2+6SJgJAqfPpiaUZYMqhS82iMrDimr7ZY2cB98z
	 QVA8MJVVW8NggqIGtfmnlhTYYFSv3jLGJJWzdNAAG7hmBjNHZsbt06aAN3TEZjIsgS
	 j9WEpNhDl4LZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F1AC7EE23
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 06:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168534072576.14298.5996220565759408412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31569be892517922f1da56640036acb91908665c36f76291dac315c479ef2527
Date: Mon, 29 May 2023 06:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685340725
