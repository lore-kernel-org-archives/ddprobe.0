Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333513264DC
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775510734; cv=none; b=botpDPmchKPIklnOqedRdpuhGYiW8YeysLHlHjJfeYJ9p+pipX9V9aU70rfUYPuQHApxQmxvR3Drv4Z0magH4tWDQSwi4SaQ5Tm31Fid/s41ED5VJJRaFKoiN1SH1NjxXqVuR4qGrLC3xzS/DL9zBqzsK13LOhXrwD2XM2F4fJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775510734; c=relaxed/simple;
	bh=pB6ILkM7cTiSK3zgyuim7zOrJbO/yFEUU6KlL8EG8TM=;
	h=To:Subject:From:Message-Id:Date; b=jl5XGDi3UFUa95gcqyCNVg96v1YSljsC3dKZKgNFikq/nNn3Ajl1lzN2VUtoGnf1SIghxL29HgOiRtCEpflc2TCjbhXFvuq/bP/7ZOuCs6aBBzeOBoLNJj3WMZgY/s5vBvkF+NAdFkkNuzYDkUoiOEbmnaboE+utlWr4FulcHMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0l1tHTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0l1tHTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30E1C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775510733;
	bh=pB6ILkM7cTiSK3zgyuim7zOrJbO/yFEUU6KlL8EG8TM=;
	h=To:Subject:From:Date:From;
	b=u0l1tHTTpV+pc4xGs5CrVziepYoJnz4lzcC4beWl29mzb7VcolL3dVanp4d0zDs6x
	 0gHt6ya2c/g2mpSR/32FgfpxOxhA6lCY7zTlhRynLL5cE7v9XBYO1Uh+KbZgYqWGqr
	 MgkXoZB3uadOtd1c72uenyCHoTpAbKrKm3zP18lWi2QDRNq/IKgazK9Lq9FetjC5b7
	 wKaq+OKcxC3tRqtVPsN0qrSmcZLYX8t9ag8hGpMSSwCxPt8GSR9o3l3U0IP3vAu99b
	 H37eFh5Vph+wGsRou567QZyeIyuz1vqC7SRgR81R86Hi0qYutXUVlILP5kK7xvbY5F
	 jDQjDsSIlWu/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4AEFB516F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551073370.19393.14278639249577261048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a296f001c79978dfda326a007433dce621f1a49cc246e584bb8fde1d2387962
Date: Mon, 06 Apr 2026 21:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775510733
