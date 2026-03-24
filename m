Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4583405AAD
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774365293; cv=none; b=JVlkvZ7EEwfy0+IpmukOZuLVyDkdBRjTuB0V6KxiLAF3PFdf8x2lAPbo7qmwY21vAjMgQD8sH/WdgI6ypj1whUCjPZOvyusO9tSqGSXmO8sO+dp/Vy5VGFgS8jid3DcmWiCgRqBC2gZRAKsQX8VwUy3XfoDPZ8MlAgLWr3rDBeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774365293; c=relaxed/simple;
	bh=36qCKY5tNImsFhnwgmh4VYEfuwjXmNwqEQIGUBkHSNs=;
	h=To:Subject:From:Message-Id:Date; b=sUpOyYcuGNrzMivf+wUo8NqECxli9vDPgR0fKx9XuVxU6s3W/qVrOP6SRJKmigBPcl+ED28RnLSbfUedfSYloDbrnjsQu3GoG+5l8v+w9IgjXa7VLtJhD8/c0SIXyioEegNwnQxN+iK8cpx3bAYqiTFKGoXuoSh+BPBwRo59pXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjxWqKAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjxWqKAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4867C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774365293;
	bh=36qCKY5tNImsFhnwgmh4VYEfuwjXmNwqEQIGUBkHSNs=;
	h=To:Subject:From:Date:From;
	b=QjxWqKAXuDpY/qbn2uv53ds3pmhpVtwC+60+V5JWbr9nuN4Af8/S9SnpE0bWgWIJg
	 gPVB2XZgISb12vabbizwOWUd+G9NnL35+u2zy04ky694bclkipLUi9Qr3H+sdcVX2A
	 AjX+/OQgYFZ2gqw2lxnOzKbadrTPkfNhWKBZNiYV3YhiMrx36GHYDCQ4jm892/cXOn
	 NOc07W6qudPxAWGMipM9L4lzGBpIm+tg67ZuaCKp1JW/meUdNVB1w9J1lH4rgCKLbm
	 9omErOJFcmyXJzWsWpVfv1VMoNuoDsXKweT1ND7ftQwB76n/Fc89m8dp/Q5mG+inE2
	 9h1maz7UwuB7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C72F54AC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436529359.4286.5680707875484401198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6730077cedaecee9fecc616f4cef90c2382c727e8ad0cfcb8535bd43e9ef9686
Date: Tue, 24 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774365293
