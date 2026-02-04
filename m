Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1461B33B974
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770234234; cv=none; b=m6zScPe7Dmm3vtmoEuHLP1xHnZUgqcdW8kSUOu1+1YfMzK6NjZofXuJZQNARdG4KuDp7IH/InQ0kw4cIT/EY+YFM9mW2WcvlcMQ2OK/uj/OME6TkCnJq3cSEWtpal5Z/cedHIH0MgmtFOpbm//esfFhefeQYMyz5qRPAyOl9lBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770234234; c=relaxed/simple;
	bh=e/ShFVRBWYWwxnexNVpKqMfgQdIbLpQXHmmvINfw9zs=;
	h=To:Subject:From:Message-Id:Date; b=rx19iVHdCTVvEdQV/gr+1oMGtbbCqBhFhFXXq0Bb2pqn/4pbvIL7owAnEFAoPsMBhmXFh4o9RoTNBCb1bwV8GvmD5RL77J6l5pDEuQmbG3WehTQ7uB72VJM0dvvDoBCJ4mZWgR9MQVY8qf/TDVWEmgx5T9xNyEpYBKWM8YYd3fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFH1xt78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFH1xt78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF761C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770234233;
	bh=e/ShFVRBWYWwxnexNVpKqMfgQdIbLpQXHmmvINfw9zs=;
	h=To:Subject:From:Date:From;
	b=IFH1xt78ES8+Sf4ieRbkYaCHCYGfDYkNwDMfo4dYjp/IVc+10VWmke5U0RsK+LYDn
	 eApO2nUzEgpJcNHHG2/p8egQrVz4jMRt6P4XWt9E9y+9WYbD5Yi2FHyvD2xtsP9qUF
	 h719Puq2FaXpbSnqk6yVlganrB8omtW7ZEAhpIciu84hsL3YFrL2cd+yG4cHE0kJgu
	 O69P5RW14lJCXyYTKXAkI8JWkwaAKy5c/NQm+ngC6MMckqakUH6IIk8BervNUihKTU
	 8LkmaTFQVpE2PhmdoRHCLgMadnT14JbhXh4W433sCz7PHegTazJXj1EGwfHqlSIvnR
	 bdHmKd1Fk+wNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B81EEA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023423362.27051.10184181186222169329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4505ed4e16b295bb33053ccaa70ac724d5916b359767bef683e24c16731e04f
Date: Wed, 04 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770234233
