Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DE01E9B3E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736269554; cv=none; b=hWpWPIUH617z6Fxm2IZZkFuQ1aWAfv0esRawQ/ockKkesb7rLhwngfOXW/6o6EsGszZjYF6snHmTiYR37/8rsUJDRc3hhw/KmndhxWFo4n43zo2lBb9LpU011U83kTX9nbxCL0bc6yPxLflGZlBy4BxQ1wl3vBOcX6iy1tEeYU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736269554; c=relaxed/simple;
	bh=GQ3Rwa1+YGtas4Ml8iac7l2lqZM8uvYEGg1OclPoKAY=;
	h=To:Subject:From:Message-Id:Date; b=Jm5E0nQKFFOaXHEpc8tSuzdaBlXI+nFEltjYzwok/fNCDwm1RxHxZPIdeq5tNFsnXgc2JKprBZ6hoWePD/+P3UhTz6rQclVSGcbemDbJnorqkW2ZzFKDAhpQ4oqS5himWdml013QPmsEN/pRjRzEMkagkbQkLyMzMXL9rvajVtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHBqlNGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHBqlNGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE722C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736269553;
	bh=GQ3Rwa1+YGtas4Ml8iac7l2lqZM8uvYEGg1OclPoKAY=;
	h=To:Subject:From:Date:From;
	b=iHBqlNGpPaZoQEx7N9/rhjOuG1qGjGkVJ7RztxuzwQHQ/NrT6LWqObSpBJvsjcIeE
	 HFhm9SwewvXmuiYNVFYSIgVynWlhNEpj2N1Kl3bBZ4ROxJswV2iLmrb6NIMWu+JE4d
	 H+LPwCZ2U/RRzhp5fio5YlcUekusd7JG8n0XH1FM5ZKoswnr44vfP4IAwBn9fOZhdc
	 aNSApqyMkka8wXtnYrQn5VVILV+YSU6dVvQYfpGTGNxSeCyHnX6h/jizyhyvwSydRh
	 Uy3zKdDJiIm/iDD/Wp6eiXIBv6lYRPz69PzEGGP4bdNY/zTfjJXz1IW1oID7EUWFBs
	 Xhl6B0kGqUSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE90E7719A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626955362.25898.2552104469925899991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d676edeac323169d66c097772332705d27e20d1378fddcb8280044b564f1e13e
Date: Tue, 07 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736269553
