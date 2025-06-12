Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302921F4163
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749710394; cv=none; b=jaRIoUjz+JiQ6cAkF+8O2wiL6oWhEXm9Vq34PzfO0/Q5DUUhhUiP8WETWayn+yNzgp99ML10zO+WE3N0U1V73DJ5mnK79AN8jbJblqGc2kYFZcwEAmpvhUGOO7Zv5RR5CEtTTRc6Ql5rAd8pJnL/i/jipzLJC/BjTn1144HDMas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749710394; c=relaxed/simple;
	bh=VLwk0z/mLv/HwuX9NpfgSEA3JEwossit/TC648zOIv0=;
	h=To:Subject:From:Message-Id:Date; b=q5uV2V6K+ZZCOQsZvURcVhOqmWEHmfTeWx19S+o9ks139mDBFGJAQayer0XzeH+q3RKw4+3VW+DVnB5YMDNa8SF67y5/gMuuR2seb/laFq+F8bRnrkeFz63guP/bM876gJRoDaI4+58LB7o+Calr++W4U+L4Lbyg3BHn/bNA73c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4zL7RlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4zL7RlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B1C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749710393;
	bh=VLwk0z/mLv/HwuX9NpfgSEA3JEwossit/TC648zOIv0=;
	h=To:Subject:From:Date:From;
	b=Z4zL7RlNHwCiqNii3cXSIce8KN1NMqj+wpDfDce3BGknVRM/YxhHj778BeGOt6CpD
	 TmAIiNwz5DAcijSFLn9zgziNz8DX6LmKHOmBjXW/L0BcL4b4i+Ih4yO3Emn3wKvk7d
	 G+Iq6oStJ6jrHpkmtjTQYZ9wqOuqRDr17WDOz1cq1kn+1yesAOyuJc4DnZGHmyvNbe
	 5A0pC2P4V9tOyv2wvqWGq9b6bTiMXDNbCiADBHTF3WXFrvtT/8W1JkgdLrvEuycrMp
	 kdpT/3vemFvg0FdrlGAi04tNQH8Lhl2vR8DkWxqp8f+/BpOvpUlNDzXCAJZRdTDQgE
	 k3EGHGKKfozKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C8CC7113E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971039358.2009.5782987204170954727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c624ea247928e466b9f78f65eba11a32e19736fa65351fe23e62f5b658223c
Date: Thu, 12 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749710393
