Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455173224
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738552554; cv=none; b=IRuB0+ZYKuP3qnjv/MLyIzDL1bVwhDxySWXp4jYe1Hb2lVo1Y2yzaMyHEVE6Cb4oCLOojv5Lsf4Pk47Y14x/0b9LqHxRYEzP+ACxYiDUZktSv7/CmqTnCBSP2e9MD6LqRZccS+GvVNTopyrQIz7ghLNXCcde0skMEWKw5fLr0T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738552554; c=relaxed/simple;
	bh=Tw0vFLniyjyI5xhnZDPXh/h1d1Lofbv4ufNkjhcdHc4=;
	h=To:Subject:From:Message-Id:Date; b=LuR//Azn4aZmWKnHcFra1pcqd02PD69vAMMQo0y59FGGdU9o8jRnXlX/xrhi+BRaWQe/rlKDbXBiAcVFrzpn0OFM8q3zjBbAP2JfdE6FTmgdVFa229JXdnPVu0iVRmbbiCM6SnkhKm3NcC5ignHit80lTLQjbaWoI0/YxUU4F54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuKjCXf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuKjCXf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B0AC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738552553;
	bh=Tw0vFLniyjyI5xhnZDPXh/h1d1Lofbv4ufNkjhcdHc4=;
	h=To:Subject:From:Date:From;
	b=KuKjCXf/kA6WOu5NO7SK7giLvEb9bELdKHh5euGn9tYNJym7Iw0PvRKqGF5uzatVN
	 5BiAKTZcW7mapRUf2HMpoPvDrYKTVNizFev7la3AFVygQveHFs+Z87Qhe3ftWG4HF+
	 Zv9WvzguvJh384RYct7WHFJD8ArL4L8lKYIvHizax9phVK3tts/srX/0GwYGvTb7IK
	 NWgxHs8eZylvvizUi8fZFKMkRxbdCX766w7LRFEYA2BPGegftoQS4WJJaVskQOk656
	 9d8JT53fvzwFZkXX0HuvG+vb4F1jYuWAAsKRqH4KfRqscnU6kLuMi0IgKrexPxhwvd
	 YvcueNvEA9W1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9DEC0218F
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173855255364.29804.16770934008861308533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb013fe2e5635df33fdfc23b8eb8bfa219dce64407f8f80fb2d4489b2130978d
Date: Mon, 03 Feb 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738552553
