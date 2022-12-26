Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C3D7E3
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A1F1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672044687;
	bh=RETZ3P1tsqi+TgZ34iovOrm8GSIFeqFJiCtcQty+TKk=;
	h=To:Subject:From:Date:From;
	b=NpmFUBqfmDT7S7wYrtsGINsyWt3mfNRnbzrPTdm2aSzT97Q5IKYzakxe85KcCqQIi
	 FlvCN/kuS8JnV8SmWPZj4F0ON7NqW5H5TbOpH282SM0O+UXQZZ2IZ81AIfsXcQhJ6q
	 aGE4FiPQFqvpf6/PDVpU3nDdjHLpyluz+YyPMzdLCTdsGk+/kfZ6m95uuTNzCaKtd9
	 5KZkBzmVSNYI0nx28q0bkiiI5xhPtaqQk9OpZApcMDEfttudCZ/2v3ZaljoQI4308E
	 LILASUUxOAhScTXxXldcLBoxtJhGOJldRaStASGY2z352HQlcHwYwkFSDiptOkutVX
	 6UcTeheH7ARew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C92CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167204468742.31388.1677822053964226487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8f464ef4885c5424d127ac1d0ee7160e21968744ebe0b85156fca33417daab
Date: Mon, 26 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672044687
