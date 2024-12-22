Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0B813A86C
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734891954; cv=none; b=T3K42nsWSddKN/tw36nkOIG6x1FeJAzjWSCY+HCvCMxbCs7YHcOp8UFKsjrD5oyPNeX21WuigFzoXHIuNWVATfSLncYGEqcJl13tUEjNQM0d5fYUUa3Gvlb3MJ+1AELnwiPC5GtDfDhV3f92jnGLiN77L+k/ayCQS11wUwOkvWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734891954; c=relaxed/simple;
	bh=XFIUx56gP2zRUyP0a+WF7OmoiPsjl7NR6Zj9k3P9n3g=;
	h=To:Subject:From:Message-Id:Date; b=HCKFqoN4VDfquOHVDmoDH9N3zQ3YP/cfHRnhd1PNGmSbHs/YLe4XMWw0wAvGyrs6KQe4/rSZUH3sQF2tmmBXbLLG7ymlqbeoLnFHM6Fkv3fWaUOMR0ExbmdDfqRAQ1HBc7+Iy+wBLUiTu7XTCta5jcNARJUZe6IFYB+8SIAkTgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4GVULHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4GVULHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D2CC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734891953;
	bh=XFIUx56gP2zRUyP0a+WF7OmoiPsjl7NR6Zj9k3P9n3g=;
	h=To:Subject:From:Date:From;
	b=O4GVULHikwvyEcBaEuheomkJMXwXyso+TxBPikH9ChvXBVTUdvT+IdC1/ymlYjA9P
	 ncNvTMwNR3PwIydZME/4uHXBLEFjiI+fksvtmeKBiMXYqjdwEBWjGK3UCYHwYbckfn
	 0LDRE8yO9u0/R4tGTkCBQibV7FaAnL826Ud55jcrkeY95goJ7tg8BgbjN1orz72S8N
	 uam72MvGWYt9hKGw2LGG+355gp6LGqYt2bt79TW5Sj3q4nv+1unN3+4Ix93Narh/hj
	 uGf5jwWJGWHAQtCsnd2OF3LJK6t9MG9La/y8mfVaJGDk6pT0nOMAZexURqaYKeno3c
	 9tjFyLSnsS81Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92016E7718E
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489195358.25911.16731561530562502019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1731fb1cc756e33013bc9c819552a8ce912ee735e8172d4143dbda01c2150f54
Date: Sun, 22 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734891953
