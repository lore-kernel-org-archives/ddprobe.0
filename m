Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B755266B46
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774537494; cv=none; b=j+AIqpYlEdrq6c1xK5+kDfrRYwiIsaEJuiDWZd0IZLKe+ns/aFrsC/0gAT9n4rFnaAgidn2++UVELlZoa7jBZPwjsn83KcntK2KxrGgUoSeGTRr79C+9Or212hONyeCmz4yJuQgdHwMzyiNjoo1VMNVkJ4dh+h+BlgFn92XPAaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774537494; c=relaxed/simple;
	bh=NafMnv42OXpVrp0ipZM3GywNn8JaiWb4Do6BM5jIhRM=;
	h=To:Subject:From:Message-Id:Date; b=DM731X8Z+cCxw+eSuZr9ObHtRlVC8LBXkzSJ2odu3dlJ2VoCxHMiZLJO+Tslu8yWdpgO7kMGZUqqtXG6qQnO8DtLasV+EUb3bKy42lhEfpeNS0ZjUmJ9AzbC214D3zRt9l0nGA1gR7YBnhV0iOquG0SkC4Hsd8Dq8bQ1KnkOgnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cK+24U2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cK+24U2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAABC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774537493;
	bh=NafMnv42OXpVrp0ipZM3GywNn8JaiWb4Do6BM5jIhRM=;
	h=To:Subject:From:Date:From;
	b=cK+24U2yFTX8y6DUa3E6A3pKAzgYJX11UwJ7T8nqGCjACFWcg5EmiYoaLiKbO8bef
	 sxdXuyPV3I1j0l9kG35mqCbL1EOSCUKEyO0ZTbOm55TYWg2kv4gGk++tOc3PZMZb6t
	 fcdM/9Om1cPTxRA8gVZOu/Zd9AUe/B2vWaEHvgfs3OSZqlD+I2ll0C4hgoGAaDzqEB
	 Y8bJCTRp9QQp0cz7M74gUNjtDfAmcxSb59JANhNq8V4G5w8mdQMI/mW7NVQud+5lJc
	 cX6vVWiCEYF+pNCRdyM6k5X5+mka1PnMY9VX1XNwmcnca4HPK07pQDks9sHftSL2ce
	 t5abUGQuXZjyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A99A10A3D8F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453749362.4547.18102489304604862402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f5c85c59dbe19a362410aa7b2b9e351d7263ba73541634da2e85aee8499c87
Date: Thu, 26 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774537493
