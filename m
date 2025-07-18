Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FF51B4257
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752811794; cv=none; b=vC5vbCBW4AWwdPTkFu57Hd6yrFRCRONC3o8hpebKFrV26Y7zeuExiuqFls0cZ1W9fxZGDNaQu5P0rFeqq3Fj4RBIkC04UOC4CHt0jHJ46naVE4VGksuxyiyT+bTHBx3jRZjrh2MYq9xlEyaJNWzW2ELoxeIM2y1FKpCC4o7Nxy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752811794; c=relaxed/simple;
	bh=UbfKVfoIxFNRuX6sKVr0/J4tWR2V523+N+2j2msp1xI=;
	h=To:Subject:From:Message-Id:Date; b=JuXNmKQNJDkR7C4fEgbHZdHqKnBtJFiKejkBsOAYklqAQ2/M+4RSnidTPMmBzwefYwM74XuvQkggi9hSGtgsQqeywDgKojGrh5PQyIHNP9QrItBVyaOh21Ef6LvlYOAtkj0qKqcYlzO7O6WECy5wcFZOMzMjyStOKjVvIYKQnJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDNnlFSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDNnlFSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2461C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752811793;
	bh=UbfKVfoIxFNRuX6sKVr0/J4tWR2V523+N+2j2msp1xI=;
	h=To:Subject:From:Date:From;
	b=SDNnlFScrniyOoQI73ZWZ/Sze33+e5i7c/esExNOKm8Wol/McG7Pb9jqTsdUnyhW5
	 P2znhgPmJI2T0SiEKc13+G0iHqWagyKuBuLNFn7+dZSCyDc9aFOdW8o29DxiEs7PMr
	 r6teCESekHrXxpUByNmo9+7gWhN/IeVJqpGATDrrg0d+xTDENXmul4axv5u2zHs/ca
	 +jmq9VXp7NXEB0IMBEmr2D3oiFs3dYLDQRfL0rg+X0+DNNIZnwwuA7uXbagySxx3Db
	 K+xEbk82cv5J1QdFLUJNoODhW4TR+SldgwqMdYxnhzlro56I2/gCb6XQvU8tbm2+co
	 W7Wq2FlRLLYxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9FC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281179358.14538.15710805236588022682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ad8ca01caf6dcddf4472d05333e89990fc4db916eb0e605fc3a265676af98d
Date: Fri, 18 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752811793
