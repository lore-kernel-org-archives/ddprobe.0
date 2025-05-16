Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C44149DF0
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747376394; cv=none; b=Uxzy2CsGz7TROSvc/5u1+x7/H6OW0OCcq0LYmfyGcSzsZ/29U0VAUfkASrCPvVJEfThr3qjrPcAYDW4Q8TDXA1oT69ysxjv19MKjyylslPhKqgcZ9LhSvyiSZ7qGWpYLhWJjmylSisPRf8T2DMGrSsxfEQbO2JMsReQBYg6mIjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747376394; c=relaxed/simple;
	bh=+YljWf6vaFueLZnPymeIPCgNGg8IaEWVkfzfs9dUGOc=;
	h=To:Subject:From:Message-Id:Date; b=PBAgV2tsJwM57ZJm9RrVJUu8hFXhbKiI5J0M+jS1nkDfw2ZSjGsbbps2wSNfCSc0PP8Z2jHOuh+eE/p1l/xYNMgyUae/MBj/1ZSERcnIFCE0nVOOC74VCabotmvuxCi524mVk8ErWADri5Lf/vy1EqI7DOvc0UGoKOOFNfZOxHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ufsy49S+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ufsy49S+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34A9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747376393;
	bh=+YljWf6vaFueLZnPymeIPCgNGg8IaEWVkfzfs9dUGOc=;
	h=To:Subject:From:Date:From;
	b=Ufsy49S+KFGNLsGT7RKoQDGIq7YZzYRBt+HfciG5Ud4XlwfpkAe4aDCFIQ1V0EK0r
	 QPfQJTV37t2UwDqe7U1L5xKevjyZZgc6+IikX9whp2Ps9B8+zyTZIPxZJWCREgamf9
	 c64Z7sfpoHwN5gu2a+B4Z9mGgnALvVtkhu8BQlkg9DQTZMKD/XuE6AEDWo+03eg8rI
	 SsAiP1hW7ckEsi7ZqKy6HweSxiMOpXlVPh3aymLXAR5qXwK7TIHRVUHK9WFzkhJb5q
	 u2+BMuKl+SMgfYWYXp8inffuIjYznQbyKqlOS8b90bmuHuhBlXNU3PzgUn/88sr0/a
	 SlAo+MjzxfVfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A6FC3ABDD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737639362.20576.15995608116547108338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4edb82a2a6191c9db2993a5270937a91fabf9be3b7b0cfa92d8e370e19a5f65
Date: Fri, 16 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747376393
