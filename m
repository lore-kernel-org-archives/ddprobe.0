Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D586170A37
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756676395; cv=none; b=NYYKVQYWdJO4rBNLtxUQ5HfL8UV2gg+2O5lsoIzaspqzoXZYaYLR7C7qmrDAZ/PL1Xc1TPFMAH29ePtZNMmnuOuYrjW+US2MnNhO5U7rF41sBe4KjFRnOZpxN6bw2ZcfdVmaw4YGWLwZNboeHK6R15S5xrCHe/0ef21hheNhH7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756676395; c=relaxed/simple;
	bh=uS2XOcnmqOCN8INjsjVm2kYc+yl70qDzx7smN8lWKyA=;
	h=To:Subject:From:Message-Id:Date; b=bMzRkwQAEaYz5/+I7X1+b+7psvtIGtPXynKln+535lW1lXFLDOrkOGwZdHQ1F6neXlAA5tdsHMnRN8kfj7lPJEWPBumcgZbEWqUcerOjL5YWU+BxLiPhMrt0q5JQzvJEUzYawxsTTN4yi5ceC/0tgQ158Fj0TUc+KBtxnj5gGnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKdLA3gJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKdLA3gJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED03C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756676393;
	bh=uS2XOcnmqOCN8INjsjVm2kYc+yl70qDzx7smN8lWKyA=;
	h=To:Subject:From:Date:From;
	b=ZKdLA3gJYY+UsD9U7YOj0Pi/o7eA2ABcGxjHJzhnHSO5wSOQVG5H1a/hjv+TYoIZq
	 DOTSEA+Ufn4AsMcG80HpwDmaK7ji0Em2M0Z8Etjfn+7HMQUm2WB3WAsUtkoyabBnlT
	 pBoZsxE8ZCEgbJL1EcjIqomuNNOAdr+ZCwj5uKy/pupUfbZrWT1qEp5XA+X/DIzmDV
	 fag2Y5e+S2jmTTjKOcbl25RU0tRUAr6yqvBDlMfF5rRYhevxmIXluiF5uKfFKPruYI
	 Ky1POyDlV9oOSimecVCQyfGLsSJZRo5HOnkbT4o/IRaJR2cd/dJq/QoWYDGpsNQawt
	 rgaLQL8bl8FAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E57DCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667639357.23944.17965106966137017437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b590f07f4e69a27f7273fd777e1759e891ededc9656dc2ac56f2bc83c5dfe4
Date: Sun, 31 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756676393
