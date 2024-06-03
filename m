Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D319882B
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717428923; cv=none; b=RjlkuwLEiF53QY+l4mTRPZ8LXbrhwj4NnaBKBp1rZASRvBUaSbZJnUYyseSPOiFc+x2d91i8FCfnpqGv9LgzmPlZfWS1XKlFZ7KYd3L1moETThRPR4e1xincVsBUeCGM0c5Q4jOGh7U3OiZkPYPMlAqegLvcQveWRBXrU2fRqdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717428923; c=relaxed/simple;
	bh=3+S7EnrmqjhzBsDUXmyeGksfjxvdAqpZ0LG+gq+s/+Y=;
	h=To:Subject:From:Message-Id:Date; b=pZK3uKjyqHwjC2Mz/7DJuDqTaZIASDS4XFHgnchc+Cl78976qzREtrSeIWJDI/OTf2wX9JBtHmc2+U7CYLMjFyOzLu6ry6AudmxpZApSQnIXljJxE3i2IsYZIAVnx+BjTzb05wB6XdcvTjeeU2vz2XiSQ8i4fZHnV08kyWVoRl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/hFGqvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/hFGqvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FB6C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717428922;
	bh=3+S7EnrmqjhzBsDUXmyeGksfjxvdAqpZ0LG+gq+s/+Y=;
	h=To:Subject:From:Date:From;
	b=B/hFGqvoCHY4kP5hhJdOxNg/fK6IswLOof9RYr5s6pzOnlmvxMtIIEUJshaDaHjaV
	 wCBQ1VJWThb4DOHct7NF6VLkeTernm/WseRWtUksZugCBqRv/SBOFLu9JQXj1gRtqT
	 BaX2O5G/rYRgfjTYmFDzq6erv+wJdLjVjivUIkHT6X2Oqvg1jMdiYGzcQ10j80lKFj
	 HQMCei8eRbJ5PWDpaFX3VTMZF/vVe/JGnzmy4CqoQeuFTz+AK4EhUr4YgcPazmlT2m
	 ujmcKy0OBR28fBcl2IQx7EQBx7cg11TI764u7JROwBZj65K3SWAh3SFE8NyEYxNiCJ
	 zFrlULZovPyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5FBC25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742892276.27125.762983145218143761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2509758a8ea531a427d421093574e6a5416c1006f2fbfc111f1849b739be262a
Date: Mon, 03 Jun 2024 15:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717428922
