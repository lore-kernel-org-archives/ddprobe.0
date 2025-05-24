Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6C346447
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748101795; cv=none; b=bdBpvJJRb6jf75fHKDUBK2ShNVw7QxdbzT2aSyrQ+h70PiuEQ+UZNZQGGFNEuMxFJoNjNdW35e0LT6rBc8PGS731bOy0lleAnQnG9pVPaRG79Zc7mdrCYt45LePezqrWa3iJypI0wha2lQHNMDWdaWdxLaWn8js3CKSq4kG+LnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748101795; c=relaxed/simple;
	bh=YYum6OIOw1WPo7tSBT85KfY31yMA3JOzRFw2leOiwIY=;
	h=To:Subject:From:Message-Id:Date; b=Hb5Oz5gOzTcu9ySRBLVw0mK+6sS1S7CcmfXKE4mcvK67aydScwBhw157bm+BL3xD5vD2dSIVv69ITJJVJIPC5KW4fV+ro9Qnl9QS22t/xzOUO+Wc6HmuCuNtVDjJW5xx3KoHrf5+fHg/+5qJsdl3UxRYruSpg8Xh3uXOOXqvgo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IN9k6CHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IN9k6CHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DBBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748101793;
	bh=YYum6OIOw1WPo7tSBT85KfY31yMA3JOzRFw2leOiwIY=;
	h=To:Subject:From:Date:From;
	b=IN9k6CHv74Fwi8JM03azqD4Mj5KsLYb18MQgmKWQXraatuKr1m1LlJ8Ib3DSfH5Gl
	 Iocmyxxg2GQdPnv9nxt+TEts81aCDnFhYGfXvR4Sg9ybRQ1ofpaBvlzYtftodLFmna
	 NUR7aWztnBS/e0FjzbB6rmy5sB3+pR6Ek52HgLwQYIA16YGl03kyLOwRK/582wyGYa
	 Q6hDU4OICzQXCjVaL5dJgOr5Xk6MAB2b3ytjOnSl5xjQNhHgg2j15+mP5Rko+ToQK+
	 hYUsoSHjccyQ8L5dDGb9em5Mhtft7NATYe8U9AIKHiVNIbmH3ir1XFNUpuoSTjIScL
	 iT1c3uaRujOlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C8C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810179358.22847.8683798927760544703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e282020748356f09a2951f3710b5006d648dae4537e44389529b5cc10d7ad015
Date: Sat, 24 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748101793
