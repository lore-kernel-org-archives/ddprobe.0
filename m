Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2430D3043D1
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761733794; cv=none; b=Uyio/WrQsFg8H+ks6Wp85H6JJlBk3uFXSV/5PU8fF7Z5/pC6WG/vZmbDnd+Da70xvWrpXKei4UT68EZ28/VQbNVp6R+dzjnZjlYCltH01+PZ45QLFyro4XHZPzh+ZGwh3Vj5uuquEjKb70mUL7ZBjT98I4QyFmiORZIgP0S8jH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761733794; c=relaxed/simple;
	bh=r+tagWhKzh5UQRbKrqXSlVhkxyFiZ/yKN3iShmhpJOY=;
	h=To:Subject:From:Message-Id:Date; b=AdAMF4qlC00CTZkTp6CRCQu2np92M5G8prSvHj1uGwoYZckHgPUJjaZdWYAizQPW4XWMqs86ztns/m2hMNybi+k2PKSHuvS4ZkZxUvz68CRvd6GNGqs+SazHYZjWjd5fmP/e41e4+RVQqdMaa/0QKdLLI1F4Hoz0yL5eserSckQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaYzMYvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaYzMYvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64AEC4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761733793;
	bh=r+tagWhKzh5UQRbKrqXSlVhkxyFiZ/yKN3iShmhpJOY=;
	h=To:Subject:From:Date:From;
	b=aaYzMYvWjAekCMwv6hy7QvqmmOg+k7gOYd/QwTMwkOvRB7BR9DrLc34VwhVu9zlwQ
	 P+XFkwg4+ekvQqgIc5I2Gqq++ttb4e+E3sNxR4xaEl16Dy705e2veCyB3FkqJWvbro
	 XoPgVHXiYh2it155xVhaewBLJrEmS4jjWodz9Mmvxldt45/GAlpAOtYlaY7VlQRSaE
	 5RWTPLjnBpCTSX6izl5fZV5zwm/hZuKu6VUR1v56QA8s27sK5yTYlHvA2BtU//onDU
	 VkPyrrafkqaMn6Gx5IbaMv2Bt9xRx7kRYZjZp+oJD+Hk94D2MjHwfJdmlvSz7a17K/
	 m+/ZOg1YRk4sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90150CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173379358.30048.6141141153735207803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2526c207d297dfed361ca9713f431190d9fa0ada8ec578fafb36a11db2ed4b00
Date: Wed, 29 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761733793
