Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7516C13D244
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719142943; cv=none; b=NyH9WjPUWitAnlpFkK4CoZpHUD/jCzfUWa25MOhL6zJfyWL6MmTbETjjavgN7yqNqpUStYtHMMWs3ILNa7uMWuF3QdVy9m/ezjsZ9C2z/kSJE8duBhnStDH2PfFbyQGckB8Fw+ORVbnOFxW21WwYhU/3vxkfNN49Bd1vXpUfFRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719142943; c=relaxed/simple;
	bh=hClhR1end6OWdr1qxwn8fU1ArnCkzSWbw4LrF4dbUyY=;
	h=To:Subject:From:Message-Id:Date; b=eu1fIPmhgjl4mvy4nyo/inmbJrFDWHtGWAqAKevb6lFhKH2wVbpQLIVorJLe2sU/WVYhmXD8tIM2idvY7WQM8VRpJIPM649ysKzqWaII1GIf2KyTm2Khjyz2HlekjOZzpcrH7VzW0v+oywioBrmxT3xpeWPhoiCxNWYNfDXSEcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZo7Y8k+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZo7Y8k+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4DDAC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719142942;
	bh=hClhR1end6OWdr1qxwn8fU1ArnCkzSWbw4LrF4dbUyY=;
	h=To:Subject:From:Date:From;
	b=EZo7Y8k+CIUnqK2YaA5lnewp1ckR4TtVr3WXU+cMuTAtfpxlGCcnSounnWMZ2hxgr
	 3G5uyFstcWM+ZPWCHCJjApAhNSLg9BI+OKOlVKYUi2aJ8/kauCjxTvQWNjld8vYAlh
	 KEN96NbRX8GTWPdAczZgi9nd3aSXAujSAdydY6vQJdNiZgEg+AmAq2Go+7dSpJUTjX
	 8xAEI1SbilJwIeKjcz9QNxkJuxY+m6/5ka7/b5fCZuIj/QpQmVBGEOodIepCA0OC+A
	 +2JATmZijQkBh3UVvM8IgcGC+NfPWMzjrrhGOg7iuU1JG3cCbbVXPy5zUuIqa21OwS
	 E+gTM8OZzrynA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B9AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914294276.22450.3526097241148995016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5152970636e325e02d9f16e6702eb3a09b4b2af1dd0b988e2d478debe513607
Date: Sun, 23 Jun 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719142942
