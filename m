Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B40D8F40
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749704995; cv=none; b=oPdH8XdTLb/JLiLaOH3BIO4jILz19iJIpcbQfgPuQ0+fuAagwRtyfnAFo+BK6eD5xMP9+IZbmjldSG2p0g9cOQhNNJqXTMRa05I6v52Gk244EFioMYNHbgkcuoMHYXBpMBWc2MjtbaRuCttk1mHkYyKVjfw5Vwvye9Hdjj5KW0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749704995; c=relaxed/simple;
	bh=9xCqjiaskHtOC/ZMcpe/T9x+xK7rzi/d8w4kg1Z6JjY=;
	h=To:Subject:From:Message-Id:Date; b=AGT6//a1GKEm14k2XDKUyMwPbofPDrThyjawEeGYJkpWunsXeacK5aWP/+1+VM+jN8urWxO5QSfYx9PhHW9YddjXgvHhjLMfXtFWIS0Er1lnjLxfxET3eAypKRwXNvzytRQxnhan0uqojBbSks/bb+F/sTqkENe6QZx7wSMxI68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjTKuTtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjTKuTtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A6AC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749704993;
	bh=9xCqjiaskHtOC/ZMcpe/T9x+xK7rzi/d8w4kg1Z6JjY=;
	h=To:Subject:From:Date:From;
	b=UjTKuTtqy/CcPGQZ1W9Bw9nLE5gF8QIRlNTvNYZwOn1NZFkH5yUaewnAQ4tz2Ezof
	 gcklLzHmNOH6Av5yCT2RXDvWtlR8jYjUnRJUi8ckUPMsDWP4CD85dSk90Q6Xkkc6lh
	 BR10NGzWArGTFpyQ8Ru4ZsyIpJq+wBOXNwJfyKoX4dgPnU302UgIFTVq8uUCywPKcU
	 x8XFth2hRCxkFrsgmCNjbWAVXwBeFig17ZuIbPclcLyut933pPBFkQscb3AiXkGat+
	 JTlEq27uceYkeoS2PwqEshPEXwtndtKGT62QkQHwUBAuMWODYwmISxkcRuh9DJp3Qc
	 MW2uJo6UsZuTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9099EC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970499358.23351.13836521985812702150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6318309b5fb103ed0fbc75609a771ac940ad4fcabe37f2fda94ee43228e990b0
Date: Thu, 12 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749704993
