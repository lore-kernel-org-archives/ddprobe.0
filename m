Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BDC635
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761982794; cv=none; b=ECaYt0kY+3K7AZHwD+H5AzzAiPD/Xp6TD9FMOO1Tc8TBgxFyCaz1NtrcIPyLwBbNqVqJEBF9zUCUmEwhe2sQ6k87lAt2FGl0li+xZj8uqvvKorzN7Tujdzv0aVr6TcLWDA7Elu8G050qtGwBnzYwHnk9Ppr0C+wmsA9CZH4vjiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761982794; c=relaxed/simple;
	bh=xcReQcEEtQYmqEsAEqQp6Hwivh7nMxrhSH9E/M4WJyQ=;
	h=To:Subject:From:Message-Id:Date; b=rD0TOW3VLaX+uJfxT/tdem5y1VpA/gr6rKVmjhLvjuD18sc7qXLBBjw4+DzZx1WB5ZDTbXFd4kpaFTwUsfiILLDEgf8+QvaYVTtv7Po+5G4sffWBVvlZmaI5eEYXsCwgGGpmXU+PElrwOCu906A+wcXxGu3Fsk7BqWniMfnHu68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHo3qHt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHo3qHt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A8DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761982793;
	bh=xcReQcEEtQYmqEsAEqQp6Hwivh7nMxrhSH9E/M4WJyQ=;
	h=To:Subject:From:Date:From;
	b=YHo3qHt4Hv/XofCIrgk2pcAQxXNzEIsfO9vHe394QXu4aBEIM+M+CnBjAtjVzfQNM
	 nS0AciUkuEGshU301UsPlaitov5woE4C2FBrnicvvJtRrTmquLtkxbMDYuxR1iJCwq
	 6lLfUqmkvLHzxvG1I0xi45luou/lnt6EBgxV/3zRgEHAX8XO4DHHiH9ag2fvkdwi15
	 b5OTFPHj3NO6Uyd8RQHkjcXCLarse/3EBf6Z8Tm6ZjKPPVEoWSYls8mEG9qdYrpFmw
	 3gfwSpIaupVx+0pmTIUB1ZKV07qWVB1Ja+jmHUCBAhyS+1AqN+K5zBZdZOX8CEJ1KL
	 +EI92fxl4epxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D79ACCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198279360.19829.17541390502330591739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44807dafaf69407f17cddc64f60164959d2d48dcbd0d285489396c36e42b36a4
Date: Sat, 01 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761982793
