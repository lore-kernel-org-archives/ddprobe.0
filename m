Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61CE28EE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761C0C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672657887;
	bh=SMiSBUnNI+IrVxQHuEBsfW6yFTOGeG1MFO3ERmoAIVA=;
	h=To:Subject:From:Date:From;
	b=UmTRhrqDEOjirmhHacavGhJS2LW/hQdIxsofaUHeGrzDpq/69avR1/OqQejcBQyC4
	 vpp9ElAsV5ErNpKkH1Xsm1/bkCtMQlbRc3jj4594Yr2GIqo/a8d6IJVhD3ap6Prb5b
	 VyGT8tXxVcACkGz8rTnGXN1j4RO9SZnKDk3FFbtOyrMnfn9FHz9T4hSsCeLy6okPon
	 mfaibuHFeJw+bOG8s4NpfztuMo609RoQyQiuGkQZ19LtRST5cwOGdJXOjkuXj13w4h
	 v6w5Q40u+75ZEueoMv/hXH09eYBQu1mWUwQVdXMgeB/aODTGjQgv9KFHHpuL+MybsP
	 vRSzvjiewMS9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF1AC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265788737.7995.516690208372012815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393c19b7ee323dfeede7ff79abdbfc6d21ec26a10c1fa0ab8432ff9ddbffa61f
Date: Mon, 02 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672657887
