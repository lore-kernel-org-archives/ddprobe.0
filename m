Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A201B6D1A
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785643834; cv=none; b=UxdIZlreNv4yveCVhhKx6+sDO4bI4fdLwQLvweQr3CQR9TinRX7uQDMNdMv/xkYz2U11VSmfYwR2RaBsO+cAHA3PnuDEAHxby4Gf5PjEZEZ7oP0g25LmWAC6pq8QnSJWCKVZaB4NR0nTq00JfdataeQ1qQZhJpnYs66soQB4/Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785643834; c=relaxed/simple;
	bh=zWphfOo6+q/k85kaTjSRGMsE+mcfkT8fwYE1rQS5MZU=;
	h=To:Subject:From:Message-Id:Date; b=Skru81A2MeH4EQ0KHRARyAQENmcRrro0dnQ2AI1JM1L4LrCG2PwZB3p4CTS+sRUaegMe8NoQAKrziT7GrNd1/4R1Gm/weAvwFOVNMr97eFw6u3UzKF3ItSv350FsVypwcdfJm/bRBpe6SKLhRiZJbh3+3kTF7t6wONDbChWx7Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHXxGC+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHXxGC+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D134DC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785643833;
	bh=zWphfOo6+q/k85kaTjSRGMsE+mcfkT8fwYE1rQS5MZU=;
	h=To:Subject:From:Date:From;
	b=vHXxGC+WmMpCyR890edKAkc5SWVjwWHDEOa1i1T+3EvxWC13jRoQ+B7IxsiIUuc+y
	 steEQMeDTZIKNSh2qrPqxN7nS4NtMCW4BacWu6nIXJVRvErEPBlpKH5Ch9YgKba6fV
	 JdbYSZC5wLRmHbt6KsVy+60NDyU3ISZchOnRIqSBfNISLyhvUJifnPBziTOD7pNOZv
	 nxnW0/QFcWnGlccJoqra6gP8tS3t/lQVwlwt617Y1efkQ7QZcHYBR/fUqRwzn350Ji
	 oRftbLYFjhV8taRMjsK1+7/WHLX/Do207k+DdijQulMPRgL8X3A3S17+whoLZU7hbl
	 qt50eBSw1Kwwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8A1C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564383368.6887.10627454585002170853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b927754f36fe147dbcf8164517da4aa5a981115a300464d13df79623b6ced5d
Date: Sun, 02 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785643833
