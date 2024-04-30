Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC6F63B
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714444343; cv=none; b=BuuF1JyPnUDyiZTxr5AUgysw+J7sLFHChWzUIldIkbLoPWM6m4LcsZbTam+cVjMEA4qSJnBJybMsARcS+t2yG+s/G9c3nHMjpd2YCayZpiKu2wYXmAzT8Rzk6TOmmpL3RpQ1MaWs0oRVHmNWZhPzjXfgB7RgS+d/CpZ7AYv+fWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714444343; c=relaxed/simple;
	bh=iUONKXdrRt5fJN/snUdY0uRxaNyNFcUTipqBjpDFL9o=;
	h=To:Subject:From:Message-Id:Date; b=qvpzZ323/s/Sg/VHieNLHLT8oKCH1vxdp7kOTpJdfWcSUGC1cXq+y8z565xrNAPK6INIaXpOm1xLjnoD8fI9507tgtTdHrnh9NMkbiTpN8veySk32UgylqJG4ToiTmZkJv1mFBjJFFC8i2yKVNv3B1GSA5Q//VBs2NqME8p+Z0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVch3Fxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVch3Fxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08FCC116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714444342;
	bh=iUONKXdrRt5fJN/snUdY0uRxaNyNFcUTipqBjpDFL9o=;
	h=To:Subject:From:Date:From;
	b=UVch3FxpomxwI7/S0BOYhp1BaJ7iV4iSh3w/bKdTOJoQbb5zJk1uhE25eQUgFjK7P
	 mBWinui4yk026b1ceajiJqoNauu8Bp8JWSuuwDu0LdEEm8xNyXbX16l1zRJXtOGXw0
	 D6v8fcXKu4w5Y0wHjip98fNuQqj684WTYxrLQDUy4LkmGbGLpodxOitYWCW7Bh5VUR
	 P5noLXbdYInHY+mgFEYRCNqQ0y5zgTzb8KRvkbvIGoSrbfyHj3tudtpYiBjzEIIzxk
	 7aQtR3AyjbU6El1mbbLhqnaScAVeG4nJyfQoV5Vyl2qaGj0yGtMbf5aezEppB/fqNd
	 TS1Vu6Dmp9uTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA18C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171444434275.9488.7850591817116953735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a3a8a682c01aac011c905624b51bc9102819a2e68498060b5865e93013ffa0
Date: Tue, 30 Apr 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714444342
