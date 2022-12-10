Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037E7A42
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D2C2C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670638287;
	bh=WNqDYJ0wKUp5QgfwIfCJmHZ9gYdupyeOpNLsjV8/aXQ=;
	h=To:Subject:From:Date:From;
	b=W4oU4yAXh4GRJ9azIdmq05RXxoqwjTBz9C88ZOasAwo3c5nOCrtDxPl1KfQiez1xh
	 8p79rHCnVXbEFQ0VTW8jMAU9kdf3Lq7LHdJe34pzhGA6khCICBpRyJr+CevQzhNzEg
	 UW0z/bVQt3NogO7Ko0928MDDT5GUFkDBn+CR+SlY7WCPZL1DXsOXCbbSxAblUP7egL
	 nr9l+LeF/STBP/yrq/ht9GyYVVVkVoa4y9cg1P6Mxc0Ibcg2NhofvdV3UxVTODbsIY
	 +mDDLvq6PPgUpowThwAn+BXlGwb4NxycNiDrCQpt+t3JTCirkj5ut9GbMbWlJ/KU9n
	 lfkDvFTiBlxRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B124C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063828741.28633.3376937772417181495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff4e26ad5bddcfd48ba623c42c95cabb852375ae7fa4b78b8dac749e89bff7d
Date: Sat, 10 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670638287
