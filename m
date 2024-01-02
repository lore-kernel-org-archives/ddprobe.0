Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2324520E0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RO40WjUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A8C7C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704179296;
	bh=AJS3Wk/fNqkRXxAt89h7NBs41t4RH7W5JUQ/Ft1EfuI=;
	h=To:Subject:From:Date:From;
	b=RO40WjUKd7599ymrYnIR2N4O6wFAISd3VpRALDPm3QZ0fyAjTynSRAuCcGyfKZFWW
	 zcNEJrkhNQ7NBhCFlxp/rCMWrPSwny1gC/Wp/4hieCpebNgPz6jcktY21w5hPQgXu+
	 hzWKohdyeMUoLwb0vIGrCusP+mBq5KsqKTPt0Ggu+pOSdKn7Wzuj5eixlbDPIFcsfA
	 oQuedhPqng8W58+KmTuXTmSDcr4T5Ghf9aryrZ+AfA0hIYVTS660FmGSjLDesFBmTv
	 8wtUNOBNGbmbsThjD0f963+mWYP2IV4ZDF/67QHrrNhHQe4p26WGpahDl7fbETNcEZ
	 bYHjmACimvFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E292C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170417929644.12874.15443597207876631869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63962d45395c23b4bd2e8412934b08d451872f719474f08eb7f5c10be7b3978
Date: Tue, 02 Jan 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704179296
