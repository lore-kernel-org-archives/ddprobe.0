Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D36417C211
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771472694; cv=none; b=KR4KpltRe8C9QatSEW+NCDslVGFyKAcG7+ClPzV26yDJ3AmeMQ5A9xHK+zJyXz4oRHy4+2yQdXqnf//8RNqsxlQXsZAuL4LJDyga4mWUKwfsB67SXGEVRT2k6xjXLrmbvOkBN7WZqHVVIgEgGp6HS794DvCo2NmN8euXp3lR1Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771472694; c=relaxed/simple;
	bh=v7Bd76EoP/uiDYtZNbZjmWxuMit5pzz/oZDW49SJ234=;
	h=To:Subject:From:Message-Id:Date; b=Wa13tnJwDHDFPuvRoEpqV3MJ52UOUX+h9JePpzih44b8q+4+gQ4Y5ncXO8IRjaqzTDjjDVOU5xwv7lK4ICV0W8+3bCmZeUvMJd8wy7De8Fd/URuflU4Pbr2K35ZKOXUCl/2qQKHpo3CgyCRXanWvtOweG4n7wAN1GUsYQU5TSx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2f1ShCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2f1ShCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B319CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771472693;
	bh=v7Bd76EoP/uiDYtZNbZjmWxuMit5pzz/oZDW49SJ234=;
	h=To:Subject:From:Date:From;
	b=L2f1ShCwuyDuFGdf/iP4eJExXMOed6LtzT3sl7tOHhEEkqA1Z3pFbwwM2hZbzXNNb
	 w4f85G9wuefp57JFX0b1oRa8llcmGReoLMQH91/D7G5evG58fvTtL4rt3jwOg5XBt2
	 ZWegTTqDdMvgoss7V3ugleeqMgwIZtI9Lk1NQw4/t7nLjwrnDKpDD6YIctarGFf6Yl
	 8Z4FodkKj54Z7L/rHgxCTjB629kx1WjnSQAaIESqA/67w/4+Op2N84nPqOk1kEGdUl
	 p1Wv7cDyN+wmyqXTlJxyVyxxygkWoJuDYZALrj81txb7rDbWc0L4EeGs/GxFfXv6LC
	 p0ROekRN6m1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E08EE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147269360.4021.17290512257317635594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be01b70c6718de3f348cc2226cb75e0f824e694fdcfc6567e423bb7903a56fb
Date: Thu, 19 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771472693
