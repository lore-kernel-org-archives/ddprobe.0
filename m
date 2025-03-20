Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46618157A72
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742486994; cv=none; b=PYj+lMuK26EyJkLYbE5/rlwRr/XjB++vU2FpjzWIwcKyPDSyzs232r2/Pgk+Luy9q8q7yXN0V6ZtTPNOyFWosVqzRKsySRVVeSTSamsOfCTWP4OzSE2IVoDBatTtrVq8Olyx5TgcoDu2E/PYCP3Lc1crv/9y/DR8JKrGqvq8q+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742486994; c=relaxed/simple;
	bh=gT80XPUPfaE0OlK6GkAUdXqocZ5jWXNCchb40uLg5Ek=;
	h=To:Subject:From:Message-Id:Date; b=nq5xqWov+6cSq37n3tMXq5PYkOATZTeV8K/p/yzLPUga7O92j4Qxc8eperUgoJ6XfY8vYaHSWEwr+IDcdwZLFbU5SYcx3U9Xd7gnTguhqowpcVNTQz0Jo/3x7hr5dfO7D1GWIqBDW+ATwih1EqXN/8fsChR/qAyC7ooHlgf0cL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xf8ZmZAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xf8ZmZAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FB4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742486993;
	bh=gT80XPUPfaE0OlK6GkAUdXqocZ5jWXNCchb40uLg5Ek=;
	h=To:Subject:From:Date:From;
	b=Xf8ZmZAVV4ovZkYTHuCXBbGHC7jLzOmtRIQeLlDbdjaGf7UXxRO8ooWt8qIPLpHNY
	 wKA6fNKM9CwXDM7OFDanfc9wKcF57hr63XG5Z/TpfdmTLpFFdpQn9dZAKL4hGjBg0G
	 8KbB60TAw5m5Y5uNBWAnfhTy2yZo+xdGVci1vRZXqgRaKaDtX1CRfznC1HHhAPzbvY
	 xX2QxqjaENH3JebivE7kODPSpMh2mgzShVFyWZVqzNQXstj02Mcy8nrGPvi82v7iXX
	 78QkbOUjsnElmIm6Fg0B7qBSAOXw1gGIerY6PlQ4v9d4FHctRx7A4rlNSYW5QWqDzw
	 zEybce6zbCG2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3919C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248699365.30255.5068580557768152533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ccc68a9553ae86786ebe1625efb9edbedb4a3a66879de68af107517d8b00e3
Date: Thu, 20 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742486993
