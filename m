Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66A5210A
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88404C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671871287;
	bh=GZZ3QTEvsqdAWKDE78g/EkaQy22+0nYDUAL5YEyi5pk=;
	h=To:Subject:From:Date:From;
	b=jyyy6WpjCqhgMjjlX/C+bsEvyH5KPcxjAEl0gQa9N+SvmMbSIB9jPSWF2AXg4egEY
	 Z3wAhRWrFi273R5BTvngPH93BITOr5ajHOSdLGSMJLwFvKYAWlPORS0s5f7bI00JL+
	 iZPvAcMMZ9hDC5t3MecwR1doMpp6yj9AQPQAv14Kh/Hdz6O4kaaC2NtdKrERRSP9Te
	 XVerMKZnuhtunTbY02ltRkfbeG7TIpDYRm/HbY8Gx4ADwoGkesKlu5JF9cG87WRi//
	 2FwzMGRjucWlwnb6fqzYI2OTgseTZpLsilDXGFBghdDEE2nzVz/CU95DtxANwHduH5
	 xBuURXp7kIfRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D4E1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187128743.4816.6313621865531210992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac5df3d6c41ba52781d0cdaf94e01625a5a474c992bfec63a33fc6c0e8a2f83
Date: Sat, 24 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671871287
