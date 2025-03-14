Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFF72E3392
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741927734; cv=none; b=jty5kEQ1C1WOdgpsmRbYvgDRbfYnBG9i8HrJdJslpRvHxgvi91zsOuLXn5Sq+BT4PcnbLY70VPCfsDDucy7Wn88kwgNExuJ2oxbgwXhHEN3F4RjxjX/pdkEFzOpxPCnvc+g2OH1kzVS8/xmfiodN6lYdzCNTuLwKOYw0Fi8o5js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741927734; c=relaxed/simple;
	bh=mWcTpZXy0dDi6mJ22K/iTjBhuthEgTbk8eVu567wVxA=;
	h=To:Subject:From:Message-Id:Date; b=VhpIyYkMtQt49DH4YL2MahJaMCELOVe29LmJDtAfnoaHgxW7NW86LOf/P4LpZ9gBPboIatATl4OoRwHMrCkX5F4TJbaiBriHVI7HVNXTMc+kqB8g9/oXqJ1vJa0yAOvjayRYuU0r4WJkJeO0JjcsXtTLNvWoBwQ7n1FIk6s6pxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSbtUR8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSbtUR8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4019C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741927733;
	bh=mWcTpZXy0dDi6mJ22K/iTjBhuthEgTbk8eVu567wVxA=;
	h=To:Subject:From:Date:From;
	b=KSbtUR8yZMQvsSBKSzFxNErX5CLCtqmLtH2RzhTxhDvtkLSJ4WsOvx5GevCMiSxo8
	 pJPB+OuXFkiHN7Da7jaVWD69nZQ+CdlYhhvdsuz8dXWI5UtQB6x80rVGThwajOJBor
	 0pxnA3WWksmct0nsXv19iW/eCmxMPuFfETp778gzNrPz1GlkX0QXR3biuMaq7tWtHV
	 2LCEeqLXyeovH0Qy1uQnmJfQEOFuWJEiNWaQ7J1XWKm5h3ZzpzkoOFPTGKxoD0vQEp
	 v/Y5fFcUUIFZvzYjryebDdgNtEatwWJR2JqydGaoqVPAtaRPRQ0ZRkdTiD5nXKcLY0
	 pUafaZTK0Eimw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEE2C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192773363.19447.18406362074968303901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a9fe35cb90a11e0446e7cc91820761d0501dce522ae88902bb120084fe2e09
Date: Fri, 14 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741927733
