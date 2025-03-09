Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532BE1C2DC8
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741531135; cv=none; b=Wq/iCarlOyUr6BEu8DZWuNvIFvVnM0jl3tLmB9NVtNH7TkIBWR5+2HoAEBnXSZ6Zr8nEraYffRgYryNgfmnnA7Ds9d77xHj+Gm5jM1dns79OQeR9V8SIAy9T/n4V4VJIqb0fHF4TJz0Jd3Uch0ooqOLIKJRwTQgttH8/1M52cJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741531135; c=relaxed/simple;
	bh=Fg8jn+rk7VqFn8rGh8871YxaP4VBhNr8gVeAvCMWCX4=;
	h=To:Subject:From:Message-Id:Date; b=fRWI77E0HoEOWmVzOP6+COd0wS68sizEagrV5+VtPvSQXCF9dE8eX+ObHThptZoIRjAlwghH24sGdnq22ApfmSTl/ILXp3AJ2FpZtQQG9jePWEvpOurVJjoqJ2TbRmRLQgTzOcgUld31SuWFNhYniCqz00b64LLttLHl3RQAbko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYfrHmH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYfrHmH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6778C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741531133;
	bh=Fg8jn+rk7VqFn8rGh8871YxaP4VBhNr8gVeAvCMWCX4=;
	h=To:Subject:From:Date:From;
	b=tYfrHmH0P0xQ1gjo38CJ0ipUaM45tVpL0UnRAydwg7CFhzV67/yTpg0hydb3Mp1Dg
	 abKD15/dLRC78mhcPnrF/K1fpT6OGyOYL23PtiHDAx2zFYd9gApCo8ujFkFbg+nkkm
	 6OESyfrLs+IqW6cScAux46E29ItdqCDMAswGCFSjGkLnRP+G5FX5z4BXoZLVKGOaNx
	 HEPDW2+NT3aygtvoHGPn7viuSzXGN5ZlJQkGmTMmhl3dYExJmVJ9WO5hs3RW9VJPgM
	 kv85KYT1S/o6+HMWFTYsjnset4mUpAebtXx2W8g19GWqrvXsn7hXQ8wBwoCHBjEau0
	 QkkGTx7DaA1vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0602C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153113362.3746.3841236790916673848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01472be9e3fd3eb0fc94dc526d03271081c157a71c97ceda4cc4a091c8048756
Date: Sun, 09 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741531133
