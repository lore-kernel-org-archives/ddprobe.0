Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA55181
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6665DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667961054;
	bh=4RmVvc5KwujiP/6gJqvzISjXLrPIaPWJAhy8Lq76aso=;
	h=To:Subject:From:Date:From;
	b=ojGQ/Dj47nuAgY7fvVAfxkSpTtL4OKO/090KVq4+gH1tTyMVR6HMAQAxHeccqzCnV
	 Hi0fVuU4B2MX3KA2r++OsLnoZZ8Y87R87YDe+Jtq0TRfLSZZ9ELR5hgCKH1QOng4H7
	 k8XxKe1osAcslVjJeedseNjD9GdYYG9DqnbMTuokyEFQfkIA/ut5m8PegGPSe1SaPE
	 HaKT3sT2D6jPuUgWzNX3oh/EuXcktWZQAq0dL0qKy1CF8rIWKk0p0vDKS2f9lunbzx
	 6JCf0LlOAnWZz9ZGzjsnonTIY0Wk9GsYte+zPbkD1GknXsoHTEaxMYG/vHYM6AhXny
	 Sj5DR03pJ6ppg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EECBC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166796105431.8813.17540426706002389866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dee1c08f6f19e505817f2e8b934ac71a274ece33aa80075c684ff573f652a22
Date: Wed, 09 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667961054
