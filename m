Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD491C2B
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784CDC433D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669195254;
	bh=nqOjQqmIAORO0fcg1DFpd8eE6p0eOlZiRB/O2H2cNrk=;
	h=To:Subject:From:Date:From;
	b=Q1HZyXusT9pnXpOH33AG9ecjOEBizXkYNOOsEdTgwoOx7cGTKOnJ0po7NNx0aXgiu
	 QGBhRPKC0MFoVYpkvFp8ZTBJz3c9heFAMe0+rYLitKPziRw5o2NHenVa+oYPmk/lvh
	 sWzdmozgZvXIxPO4/lsjHGZagVPfCFp4xF8t0+CC3qZ+3M9uDq/QqwOzkKPoPz8YZI
	 aLw9SXVdc8gngh79N0npZ+AhZhzgRHCG67quhjwZpM/UGd6q1oLTu1MYPrZAEh+/IB
	 OxM/ghbnSO8d0j3wS2HKwS7fyqKmJoMNm4yBe8HC9wa6rghJkuQZzJxEjIWLUshGcm
	 5NpjjveIachpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587D2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166919525435.5193.6489147098983665791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7b9b2b902d5639796a71881f249270a18af94a959b645b61c2805ace547540
Date: Wed, 23 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669195254
