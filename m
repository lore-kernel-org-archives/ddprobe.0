Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B58112CD8B
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084634; cv=none; b=ZqI5g9h9wvIPtqzs/kuC4FfpK5wa71rxhYIcDNc1kwBCqkpIZ+K+3PBUBNrMIgiJI7KB527XIEKYV/CgGIBQRRXdl4827XZAkr4O1+wJ4eZbwQhM2+pWEWrsTBR07tBpZC1mt7J7QzIcmqqx6ZQp0oMTPkMZwXB3PMTh3Q2fSTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084634; c=relaxed/simple;
	bh=9alurDBI+FSyuNT7yeMob0OjqcO/Zk0Qy7EJBVTHwpQ=;
	h=To:Subject:From:Message-Id:Date; b=lE7Q8hDmtUXdDde08u7QpUjMKpoDrNTeC/8uEeVITCuBhehfsQOt2UMkqsc+lL6rIkTnjbWEVzg4/fwC3ZEevkVeZxzQYWTXxz4QpJXFTfjyNfxr6njaeEZTq2Tgi3wviSDxmhFakGJb4KA+hf3Oy3YNsQ2NEkxPSShzHvyz86E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fy+2hakO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fy+2hakO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0605C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766084633;
	bh=9alurDBI+FSyuNT7yeMob0OjqcO/Zk0Qy7EJBVTHwpQ=;
	h=To:Subject:From:Date:From;
	b=fy+2hakOcHINCOlOgdWRLwS211rFtHAHZsrtu98pvltUqOAnKQFfuCIQ0qHZek6EO
	 ri357OpdqDIcrTHMnstbfNa8aUf6rAXeM7SvKhmt+RPtXgU/WhlIDhijij0T027NXy
	 iXicDO41QALpX1m6z4G36x2cJZfKnIMZKN+ZSPr4Bbq87AXR4kfbJJOX3/D4kJ5l6K
	 85sPRcpDqz22MJI+oVc/Yj0Ut5Yr4M0RqwlWNNvNvAVtv9XKVjN5bBWD6Z3OA1vfLu
	 Md0PjIi8Wm84RnGnL5O7uAxX4rVZB1eCF4NaqgSP4E7+Of2aoRraKhLkKOGBmPoTWn
	 krSuTH4/N4UuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D20D6E2DD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608463358.1337.8810267403747294512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770b5344d49c81aaa001073f9618afb51eb9a45676651e567e9e7421113ecbaf
Date: Thu, 18 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766084633
