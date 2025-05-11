Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA1525B66E
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746988794; cv=none; b=Yi4wRkJ3LUMKWiBiMelUXgFnliQbuFpIzNaTKO35ZmYPLF0BG0e3S9xmqELxNxXcXTkClJJZYu95V1fAjHp4jJRNhnXq0AHDrORnqGTjtw0GHMre6JN+xd8N879PZNDUKW6hKUk+71PBeJhdC0xVZ6e9okPTqLzrLtTTODO0ywU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746988794; c=relaxed/simple;
	bh=9HfS+g3gpMK2/xkT2pyT57l12gGOhKPxkQNaaiRm4TU=;
	h=To:Subject:From:Message-Id:Date; b=DFX+HD/7lOAD9Vh7f67yT9vqUv+kK/nG7lWOwxTL2dgFCMjz00w49WmaPpYBX81LkrbdAk5AbWjpsAZH2bLAgKIz2C4Wj0fKgba53p+zMnmq+miLTXiLTd4Z4C2GlhlpyFDfE6qrdyxVTlYR8eBjD1GdUXR+/DKPXjVwxbvKckU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvivE7Dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvivE7Dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F262C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746988793;
	bh=9HfS+g3gpMK2/xkT2pyT57l12gGOhKPxkQNaaiRm4TU=;
	h=To:Subject:From:Date:From;
	b=LvivE7DyqMZpxWjje6bkW33k5VOLt52Y3qOF1HhwbTFgmP1uC8PjYBC+CCEOMj/+L
	 4cWOrC3q9YrBIFZ3+cKKPhKXvTZMYJKuUhYTQXNtD2eferld+pkZx0A62IpdOOWYqc
	 R1KG3W1X3LG3Is40ZBo9fHHJiK9xO05uv6bfDWfkbgdwikf22dh1cQF9Vv3CD82ZSp
	 HMvsvg9glnsLZZHDjbSvsuNV805E+/LBgi1xwttHU5eOeKdP+GZulnSwny34tmsxPx
	 A/RAP1yvzSBVlFlvoI6r4yMMpU3NiBmmgco3gjMkgverVQhC84TCEXcYJliZ8jTlLQ
	 o8B/qA6O8NloA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49EC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698879357.26674.13013657690112529846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b243393f38adca84df5af5131ce510a0ceebf2a24c945e119bb9ee81bc0650f6
Date: Sun, 11 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746988793
