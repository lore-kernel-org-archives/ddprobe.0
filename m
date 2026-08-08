Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A0C1F09A5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786233034; cv=none; b=ruZ/xBzzZ6tEYYQEo4bBi+LyRWWco3KPY1h7096FRL0xvWAkSZnu25y09uC6pYlMyD1zV5JgRW/B7H6xH00Zf3aJtEdQ1YIdHbGjkxLTh+05k/RA6t2faNvbUH3EZRAv7J/p2aYBDW6fSZyYRqANkyEfYcU0bhV1lQVjDo7a57A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786233034; c=relaxed/simple;
	bh=A6nwBhARyCnMgLlUraR9C6Ue5muCN7TebY7oxWm+xdc=;
	h=To:Subject:From:Message-Id:Date; b=qHGpgV6YDvzyiDzuu9Qhcmt5c7i7JaBDXAgYFxCfN2JZiDYfOxy+lSX5+3PHYwfbS+VdRh0GCMtlkDLUL8aerWR00VbG0MGYEEpvg2ymR3Xfhg9vlfx0JcHqZ+dLyk9CQz4YcJ77Pk8JBxO7rpedBFrTzA+1WmlaGMnzZvsoDhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POzJ6x2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POzJ6x2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786233033;
	bh=A6nwBhARyCnMgLlUraR9C6Ue5muCN7TebY7oxWm+xdc=;
	h=To:Subject:From:Date:From;
	b=POzJ6x2Fwdf5FI0OqulcLK+/ry7m8KoT6xo2vr5akdFSNLvkJtHaR3uKT4qJ/Gmbl
	 NvVR5Jbnh0WDy0YsMRyG7fAEE6xBuwjjj3ST3jLZi3T6cuPrIcbv/XDjprv/tSN74P
	 zWmy3PH5453lPUCctAZ+pHP2HP7mPSaUdtuut7KsL582sauvpN2ezlI7/3Qe8W6WFq
	 zdSR52k40Ul8bZKhwMrFFCKwuNB94vV+/yZO4Q38JVC8BoAkWPU0Cp36I5v4yO4zpV
	 Jvw3DKRJxp6J9pPl4ud4JhxlOfuzO9aINfhieI/SSdvhEbK/rOlYUzTyP+iBVtlmxh
	 ImkUymTnXeC/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC002C5AD48
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623303368.15490.12255987176786433559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613614207f3e335c426f4dc6656296c9a71ab7f77466df91396894a57bc0c978
Date: Sat, 08 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786233033
