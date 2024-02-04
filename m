Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2AA8F54
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707022697; cv=none; b=RymN6XYXULZONsS727cMiWRGFKuZa7cQ3x9WYOJu/0DFIPC83iCrR8K+26k+noF730kjnXIwIYkZg2owEVOfEOtR8qTHZxkyjvnPabArT7zfZSgFM29joN3JFqnp3jMtLGDdHW4pqrOZTOh47rO8bn5Q4Vu9/Lh2LNtmFwGUeQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707022697; c=relaxed/simple;
	bh=CocpkhcEgdAbvTYNKPgO4ooXh78xtL1gw5dzpquplWI=;
	h=To:Subject:From:Message-Id:Date; b=gOOgL5wkYwQuwbZ0THwuvCkMx4oaB/Qk5e+/AFoSd8BhuzZzaxWoJw+sPJ9kR34paIuKri4tCyEp9bxoGYBbymNVESXVhR+7N8yP+ShDRh4nd8GpvawQEwQLYlY0VEmi9RC7MU9JE9lXxjk3hWUbbY5qtdfmmnKpJksiCWpzXdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLhVZfcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLhVZfcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E1AC433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707022696;
	bh=CocpkhcEgdAbvTYNKPgO4ooXh78xtL1gw5dzpquplWI=;
	h=To:Subject:From:Date:From;
	b=lLhVZfcAAH9+tHNgePrcV934nI+gkZNMVWW0n+Yhd3UGxyd48BjqnGMkxgmfhJh7K
	 04i0WtfXhqvZzXgBEIS48VRXvw7iHyau4EJ82Seqw/dyogmmEziqg3NIaJPhVS2ciU
	 qnGFdZejKtIsLhwIsJQlRFyuJRDE2LY6HTCt2Hz/gfuZd8MqnmJEyBDSVXwZWBT1kr
	 8cgRTzd74A8W+CNzWEpkVzAERVLgm87xnVsclBNgNY0aPV2XEEZSiCb8vWPaQXFgPe
	 zzlfd5MdZY7G+UbbnF8lE0u2DG5I/Ito8WdSvY5r7c4kZkXSHzcUX1pfsQvy9tYHy5
	 l97bBgrzbCLjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6881DC48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170702269638.12614.2023072501613134746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32e57aac11af7d83f61a50bfa56492d9b5e5aa7f1dcf5ee1892d6b1389d5d71
Date: Sun, 04 Feb 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707022696
