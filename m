Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DA28828
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746957594; cv=none; b=qXD4rfTtNd91QtbsCxmkCZzq3h0TJYPe/imY6rxuksVXkUBGaIKct2krEesOvV8OPogjki/i/c4N484VUr6fa9QpFVRxPuowVagMCjZIH/XEIgrHRGm+5kvLeZr4JLwsIqj4DV0gNAVh5foIBPIUSA4pLqJgxKNZ1K8TXwnEo9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746957594; c=relaxed/simple;
	bh=zS0tNrhwxtujWMq1iKdXtP5n1fj7p3aDzDO2OOq2B/A=;
	h=To:Subject:From:Message-Id:Date; b=mNzunCw0E2PjXlmFgvp9O8U+U+8RlfKOFW/J5hDUvK/nXbvZfTf/G+wxKQSe3YkpNr4owsYjn3+LBOYpujKGDCXuBz/SYW8t8sGoV8EDIDDcjKiQsYe19Z0BBoqqUojzV3jIuRe2axbc15NDCXMlk/kqCA1IJFR0kgkLupg2kjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGcgXIWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGcgXIWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EA3C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746957593;
	bh=zS0tNrhwxtujWMq1iKdXtP5n1fj7p3aDzDO2OOq2B/A=;
	h=To:Subject:From:Date:From;
	b=nGcgXIWcddsHTJI6D4XdrDElrDblBTJJwbxSfqg2eIDPfFDDmTfd8v79md54ZyTZs
	 b5MiAjl6Wv6fC/oMtOipGGYvJZ2XR/ZJXTJzEeIYOly8m0pN6vBHJjbK+mwGiVux0r
	 QC0T44yk4n/1LZfyjBqT1x0bld6PjuPVDPds+TO6ByQT+K14KR0RPnL9qHc3iaA9WS
	 /9vdMzvvssAQPlAOsOgqYomsqcPuQ9rTCGmIWyWcCAb7YKwoD7pJ90tBT5VGKC2XDZ
	 wJ7w72U++6eOTfio+JFGqdEj8y+1p9sWZ5gZR+t6z0kUyCA93q5sCAB5lOmYiofxbS
	 CdWF0TKfwUAuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F0C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695759358.10165.13346299499008864074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2a44a7db6d65c57bedbc335bccc876a9e6568fabdb1642926a774a713f7649
Date: Sun, 11 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746957593
