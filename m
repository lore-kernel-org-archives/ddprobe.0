Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A98517C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08B9C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688954828;
	bh=SNptNrLlU/UzUUPtK0AfU6RAR0K31fG67vl+GH70JVQ=;
	h=To:Subject:From:Date:From;
	b=NNja3WIWCPuRndx3d3tokk4Va5JtP4W2qbSfjjcwO21MfhBmocGZVl5A+D4hFYorq
	 8DFCwHhqNEdX0NIYVO1ybJy2sdzw+b76JGWD5NK1pAzXSA86nfcT929t38r2RWh64m
	 PQdcn09dxcytRI7XQUE13FmU2MJ/6I5PGv/krF3D3pHC3YjNlcHAqdbMbtZk3uLv+D
	 pGyEkIJwQdBPPrPC13JfcAPrbM/9Unjw6Eqj1AjcORlPLT6lqQV68tEbrKeDvRofUU
	 2EDiJ2/uV4PiZd2tCZLuCLv+Yv4Z9YJOPlLil+cHuU7RQCzdWAXnYWZjtkevcTlDbP
	 Oyh702K7z++zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADCEEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895482872.22755.11380636818501749140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fc5d254f3008116ceb6a164619b9367d93db7816920dbac023fea95d5cde33
Date: Mon, 10 Jul 2023 02:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688954828
