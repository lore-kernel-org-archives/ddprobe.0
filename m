Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20193247295
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759964394; cv=none; b=EcYIPNeNd5JHyPQo1A7jIy/EvriBynAWvAADy1VzpI0zhGkC3ttsRODvS5ZHsWcE8m1UFa53Jxi9XHVrBkF4kJF3fDRRf3d5CfafWElml2MSZn7ISTie3+uG5aYjIkrBjOY6z/Z7s/LxDpK5smSKzq+cYuNiigUvX8noOUUQmQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759964394; c=relaxed/simple;
	bh=mGkMJf9KsM+5/ImmFDQ1NUQZ53Efcf4TFr2MkWfq8xA=;
	h=To:Subject:From:Message-Id:Date; b=FGjDYYC0doGJnI3PtPAiPoSM4E5JRvZeuxm6E/nZAXhTsILC5hd8gOK+JlHWXWAw2k1wyRWO0Eb5Ux6IHEnw/Qm1MhHE80oSs2Lq4YQrswjQNOJugqWK2adUIISPPmEXn6zjsR/FBH7A3pg4HUQSr/aCpD0mT+ZRbJsJnJrfX5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3E9r94w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3E9r94w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0B9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759964393;
	bh=mGkMJf9KsM+5/ImmFDQ1NUQZ53Efcf4TFr2MkWfq8xA=;
	h=To:Subject:From:Date:From;
	b=q3E9r94wwGaBWkKr56fpDu/F7oW+KVDFFokKCyXUHeHp8mYvSsVvmcDEjJOticbkz
	 DiofOUg5jziijVY97kf1b+L0nSDinri3xF7coITTW6Jm0kgkABdsWsij+zzWfBovOi
	 /9Pgk+UyXYZrfoizMou08EDf+9Du07rh5Yi0uFV7VKVodssfDAiQLq3lIpOP+81vLN
	 KxXF6bubP+bZw1zNKmr5VQJrUurVv5CSJchuFHthsxoijpWte7geQsLx7yJBOQqvn0
	 1g3JQ5Neqm6AWCDFBvX/4Tx+eZIJlCXsewvHwZzadyZTtu2WOgCrnII2y7aO4csr5Q
	 oBDkx+VqQLLnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B48CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996439358.18405.16248567064959031825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4743864135d13d39fcc16aa6b53787c25638dab94099f5d5261c20d85909401
Date: Wed, 08 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759964393
