Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC7731283A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774704293; cv=none; b=VX8f0ULy5TpG5VIEJ6HCrUIt7hjkq/CcBNe7XFRawwle+I9UqBRvPw6KFPLB0N+CqRZq6tz/9jC3F8PWWGX+Csp+hx5hc8Qk/Ow8BjovrWl+AIlahBfYJa6Bk4cw38LS896+R39uaVqSnNEW/lHaiN/bE8kuQ2mv1L2/YUFO5fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774704293; c=relaxed/simple;
	bh=Wjm01NJpKfQ7ryQUxS/hJp+QWPGa9ZRTF8u0kLvJyzY=;
	h=To:Subject:From:Message-Id:Date; b=DR4Q/Goosj5gM1JaAt1xsBPxntDH8E3HOELCFPrlPzMzNMIF0oCQBeYV3QC9Zw2+WkjyC78BC0VZeIKsknvp3RTPPRvXAFY8cX1oHJX13mRlPZ9mpTpyxVFLRGfWRdxJIg5AJ523XqGxT11smCORBXZijQty7uyD7SgAq9lJwQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giMmAass; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giMmAass"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0727C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774704293;
	bh=Wjm01NJpKfQ7ryQUxS/hJp+QWPGa9ZRTF8u0kLvJyzY=;
	h=To:Subject:From:Date:From;
	b=giMmAass4spetKBfpdE6XxyDw4jviK+Ji6oe54ZJaX87P5nrunbnHENT08nYFW4JJ
	 7sJ2rwkzKCuxbjTbPRjaBzXRyOtqrSp4HZoliie7HBYvLix9kS80NQI5px2dllLTVn
	 uzp2pdYZrRghpXiQn/50JY7hkrUM+0GjHRUUpkJIzDDJIQi/kuC+V0paTUw2l3C7X1
	 OfWzQV+e1XwkiaTbk4o6Tbi+I1UAn4J6LKzwfGRxRe9JPB3Yf/IuOJHTZCDfLIRw32
	 f+uqOZMlSs0naN63leWpJGZldGiuj7OjN08k9AWIb0aEFZxpMLqmzdzorFMn9rzzPA
	 H2ZJY2baGBe2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E7710F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470429358.30541.16447232329216393386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421a144ef541cf6f4004009accdcb582767a7bd7401f2f1c07d2b2d44bbbdf47
Date: Sat, 28 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774704293
