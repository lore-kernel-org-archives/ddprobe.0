Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FBF184E
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743973794; cv=none; b=O1+cNlqcHn1TZeLhegqXh92N/3bIeGy3yAtGbu+U4HfTRaR7WBqajjDEsgF50r0dWhp7mc/OGmqOJQ+7Dlus+wTDJej+LL7r3O7AGSWwOniZyFmnGNWp2bHvzI+yYna613j8AvsehZ0NNjgkUHAgKfgT9OzBjFjgiGv2to4Wqt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743973794; c=relaxed/simple;
	bh=0vOgivCgKrODNjnDbgii9jfBYpNireXN0sJJ7YW3wpg=;
	h=To:Subject:From:Message-Id:Date; b=IkKafmOJ5fEs2weqBlOmCQHOac9oI+gdTWTG+rMxInkrWvHPOUaVJxsd0Lhv8DJ9B6mLQKouZ+h8LrEW9fXXd7SptcJDJhJ7BYZn8qDI4JfBj8N2UHCjdY5FeaXFgrTidos0C5qo1Vs38AjYgh3JPw95q7jApIb5OnS4IF3LrmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNJxKZfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNJxKZfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7340C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743973793;
	bh=0vOgivCgKrODNjnDbgii9jfBYpNireXN0sJJ7YW3wpg=;
	h=To:Subject:From:Date:From;
	b=uNJxKZfyMSwVNj3lwJj93CtIN1PBnF2daqOTNDiqG11mvlVGyn4tVyz5OpdDaznHp
	 J4G8szgMAnmLcWXmR/TQ66HEX+4Cqv8FCebrIVKt84Wey+2vcw4X2jWWteq2YgkeB7
	 vJdkM3V/8ZN0Vu5H7qnA5CWMjNHgGTgcp9jrRnRuXS1uprCyWAyXPeA80sKF8MX8H0
	 +0Tlbew3Sdxm3BWVsyX6/qVf1gwrrGUq6vVM2Pek0qjtEWiPBILb1ftjgAee/rjccW
	 Rc2nEcgOv5xT4tRGYZiyuKswhGfO5F3HCQO4pr9tLnq6eT9c3kLxDpG9C4pR96EY/I
	 jfvcvfXvUkTNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EFFC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397379360.32718.6719215992533064854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07bacf0019e55f87fbb74f5042a00bda5a9e9291bfec5791c2487d89f1bdee12
Date: Sun, 06 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743973793
