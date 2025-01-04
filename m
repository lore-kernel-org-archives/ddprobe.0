Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC1013777E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736020554; cv=none; b=O0WMV4n3tjtbIfQBRq29Y8ueCFWK2t9Quzfy3o8MSVKZD6X2HPXCuTn/ch3R0hheCpcHAnvNUyduuk/d8e92opPe4+z9UQP/x8I0pgmW1NRocchBvatpgRqF7SuNzjX1AiWxl0gHc3D/Ql82zk0mqpwye6Gxakpce3q+q/a5bjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736020554; c=relaxed/simple;
	bh=5RmpmB8tmX5PWJ8tWRipKc+IwjWQITHVV2wDDJfDmX4=;
	h=To:Subject:From:Message-Id:Date; b=iWnDmJUeZi9zytQ4s6jTcxgW0PS2rnmgKdecDyhibX1oJzT+HKF3SusSsUFN/OCXGBnV8H28zbxpSPOOhBpBJtX6x7hNBgMVpodHX7QbXEaPZaQZY0bT770TfpVpLzqcZyFlTNo+WLVY6hHFKTiAk1eYzvRfa0c6gFQOcXftoNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjfP2w9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjfP2w9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B033AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736020553;
	bh=5RmpmB8tmX5PWJ8tWRipKc+IwjWQITHVV2wDDJfDmX4=;
	h=To:Subject:From:Date:From;
	b=sjfP2w9cKRYUvcwCsC+CjUYaBSZyIzdk6hqDNtqO0lSz+4/NYjy49xmVC1yYOxzR0
	 DBIqKn1Y0eNWpWZoXgYI3usGjRYb0PO274gy0wbzjK1vG7FZoQzfy5eh087uYGTwr8
	 1CkfByqLp+/EJ1z+skvTn+K1vCotNm73hNjxlLQ7K0UhZLcCDZ8gCOYUXXxzUrwauo
	 J/y158EulSWPui921dgvJcKR/9hQSNspsOgShgehl2PhXpgrTpRtNpWimn38F9hEwX
	 FfQlN5ocnY5W3Bq7M5Ob7x4roJzskpug2+9sodiWXLikfzGNf9fHiNHVYvQcsteiIi
	 U1k4CQWmcbghQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B91E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602055360.21648.2510655674059772856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cba645644e43aea48b59ee1ee78c983dbaf1d4ead31f2bf8f27ecf58ac1bcb3
Date: Sat, 04 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736020553
