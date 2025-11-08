Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B6127470
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762607394; cv=none; b=BlAZjyIkuaL/hItUKsrAouy3/jXeoNaEy36F+A1xsZYv46FBgZ1onqc0V4+1e6cCFY9nfw4Bx3qlspPowRNYe4dXMvxSZRWjBb2y9cDoJceQ+8XHj8vcXSXaORWQfRU2l9/jWkudHQTNtyiy8r6bfLCRJu3tfOGs0GlzdhoRjFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762607394; c=relaxed/simple;
	bh=TeQUpujb2r1G5Amwtbzm6MZAFcebZeTqVOaeSXKSK0c=;
	h=To:Subject:From:Message-Id:Date; b=Yj5Wl+eAcb7GnBUXvWAT/+xxehJkSFaITft44nOz9qNKnT9ipFuRyZDkznHW1z/RHIxM9XSNucb7F6cUwKhSY2U4z0oOW7qrt8gHAWnQLGoc9Z8bfsdlS8M9Hr+gx4NfKme+zVzJFAVjgclE3myfgtQlADE6tnTcBz/+3Rx95vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJSS2sGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJSS2sGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC3AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762607393;
	bh=TeQUpujb2r1G5Amwtbzm6MZAFcebZeTqVOaeSXKSK0c=;
	h=To:Subject:From:Date:From;
	b=GJSS2sGyGB3dZwFILHA2XQmAJkP90TNB6LoAObFf1IaORKv1g2QcsX+icVKkzQWw6
	 5wRJGT/3XoUGxdK/6p+gSltgr/DUdmiX+cnduoGHY4J5QAPc2m/mKklOqLY/FUK2td
	 Ab/AfrI30hrv09Jz8hUrd46j2UfHKDfpz/6gDclH2+Ssuq4f/DZGJ8JwGZKm/k/8Bp
	 obFHzhAlyXZzZ5JPLezzacY/iIoGXcyXQasaubHG0hCPusVPAGB0D8fdRB+t+8/pMy
	 cJ8nW0i8jojnIYHROiW7hLnoBD8ensyS49ve8jYeHtUkXJ54BvjAdKGL93xFSvjQPd
	 FaK+w1D5Lp0iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FBCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260739357.16350.2274929687147233794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc73c150d39f85c0f82427353434acdf67e18ffef21e11d702866525d527997
Date: Sat, 08 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762607393
