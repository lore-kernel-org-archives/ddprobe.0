Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B190C46BA
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD7FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663449053;
	bh=ojLTQx3Prt9nRoAZ3q0heFm84lcPuQ8s2O5Ivco48qk=;
	h=To:Subject:From:Date:From;
	b=S8qckkonmQO9SonZTZ2c+GGcIYwP6nXQqfHebgrtIc2tGhYTypHyHwMMveMh1krom
	 ki1dMKnCG9Q92z9sN2zsFtaVqBb+Wsz51JGanc54hDex1ZXtgbE8wa5RQo0Aa7l1Gu
	 tfiCkrOf3xJ8XoFRZiqKgvqDwrPloUj5vQ0f06JSdtp0+BXq4w3/w9LGRecvIyToJQ
	 sZrerPHL5KFYa6Qoq0rTlV84Exxi0E6Xfn/Ihc2x568Mls3BmXLFG/LTWkupY97vQx
	 6MQdhnCjbIxWwflo4XwTv5XAhjO/LRmova8jE1Aw+rD9u/QZMzqVtQ0dQD+8ozcGML
	 7x+gxIY6IA3jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FFC5C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344905331.23421.5608803270667147924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0dd12cfc17fa56351937f250875fdfff56204eb4797faf7be800bd1e8759f2d
Date: Sat, 17 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663449053
