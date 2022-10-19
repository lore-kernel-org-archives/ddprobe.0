Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4612F33
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F867C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666214453;
	bh=UjT/KZPa2KjQrW0slL0K0iHWnEv6SvhvtDP4OT/LdLU=;
	h=To:Subject:From:Date:From;
	b=ViILHdrWSW9jlJHwFFBE6fC33nYQFRUOlpvCFlemQEyPaQla3B+pxOxjl6qiFYWyS
	 Re//eg3EuRLu/aWzuwl5UTmDL850+NV6Fy8vs03IFD85CY9JgFtUXpIQ20Bh8TDf0y
	 6mX/e616a8YW6NgKHE0UjF5zl+wqUYVcSneaYllsZ2JrNNXGXgGA/eA0Ug5h6egxi0
	 oIq8CuPgVw7bBD2+h3uq5R4zSEcbUI6iig2H3772X2Dx3g4nfLOrxf//XyEa2Hg6A+
	 EutIt1NVC/OShcvyLlkbusERuIR++Vo6duP1P3Ban37tRU+z2OANPhVz1+HHEDnPB8
	 tnkZ0yVby0kSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513FFC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166621445332.17589.12896711328874411934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f9c4264fb0333724d0b6faa0caca25eef76b3761a35351e0da4038d8be0cc4
Date: Wed, 19 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666214453
