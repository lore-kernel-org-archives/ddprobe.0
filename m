Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258CE498B9
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtN9HNDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B4FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703715496;
	bh=rbWFVEJSbwgmA7MR5jkAmkaes2FlNY4Vh0j8GwUPiy8=;
	h=To:Subject:From:Date:From;
	b=GtN9HNDMqYjSs+ISCCAP8+wshcqNRGGXmhzz7f7gU4QbixqHkNLoNlyUh9hdB1hTV
	 3Ln23yhaYKDyy9BcCx37+5VI/3wfOoonNHoGyxseVgKShVmOLBB2TSC+NHBR23RZ5n
	 XHGKdaur2m7W6Dhayg6VCSgiSUqeJagN+ZTp26TXyNVeOErShyRLmPX125QIgmNsvt
	 PAC83+wMCsW4cYmzBjWkaqmHE94EPeIwa017j+oS6nW7XeofvHmcxBTcXkT1yA5bje
	 /GBN4yLqP7aM+EtmeIe56gF7Gt1Nj80cYbVjfo8Erfunbh4AUkgJPp10P+21A3kBnu
	 66iMvX+NGf1Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F5DC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170371549640.2602.1461311415208210984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc905bc427180df7ea77e0f90fbfacf97690878526baff8bc873319c417f5ef6
Date: Wed, 27 Dec 2023 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703715496
