Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367266FC3
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 20:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3C5C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 20:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678912805;
	bh=cigukoF9mOCdUUjQlIktDNA9U43OtIzXRNe0oya1+xU=;
	h=To:Subject:From:Date:From;
	b=SktnbFebnXC52LMAqjSjKXb+ndsvCbkXvqEAlrLciI3kJ13SzQbPoTK9ZFeCBqzV+
	 gz7hNTIjKN2RFaqhFjJXQDI34qkSFidzY+UOA2KZB4AqWUYxgMF4MoX+NXPm7fmKvB
	 Ft7wcpGyswiZOqaVk8jbQe8kvppK9dGjGMV8ZtJz14Z5lvpHO27jUw2veHXLcETgZ5
	 hQWIsNwtwGP3Lrr6M1I3WPdaW4ZkRLxJw3trl8fmmZRiTHeIZ/XJ1opMRkT03Nov37
	 jdpWwlisfNjxv4pLUkysDcJHY3oKgfFo127LSikza5vFNCKsWq9LPYnQAANXqH3cMg
	 /ngqgwuhkuazw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD09EC6FD1D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 20:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167891280576.31775.16269296589952847856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a9b1d8429e7a4f9d1b0db4392db356ee24fa77d789d9cfac7437dcf3720ee1
Date: Wed, 15 Mar 2023 20:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678912805
