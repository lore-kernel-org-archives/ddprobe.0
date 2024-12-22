Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3841C29A9
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734848754; cv=none; b=svNkMpGHtz5KyShF/3d5DOXU0FG0EqP1tDwSktEjYzRUi0vnyTCOY32yHmE7VupHGpLKafGnJ4Fwa7GVhuqVom7Fvd2iesz5NDRhGDQwDLQ/p6775VJMMjwlO+LsGASkiYMgz+qo7BLijvA/x+jWmAE62qNquK7UcqdU3qlQmxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734848754; c=relaxed/simple;
	bh=3t8tvBPv5L1Knzpj2PRtCMFjgUZHp/PmA5+01xvziaY=;
	h=To:Subject:From:Message-Id:Date; b=hRZl6o5A9olHn4FoXH8BZloBRPxwmuiXOBphjzYCZthAjvXywg+3U6OZn7UdzPRZ2C+dh1w2A3/5w0pR6UAr5I/GEtDUHg1P4f+4A5ejNrzK2lpG3sJs6xqzrrmZzxqYEk/WUZjk9qsgrKgmFXqWu4FGJmir3eISh7yAkgdKivg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnYbR8w3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnYbR8w3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F3C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734848753;
	bh=3t8tvBPv5L1Knzpj2PRtCMFjgUZHp/PmA5+01xvziaY=;
	h=To:Subject:From:Date:From;
	b=SnYbR8w3tO8ILpPwuTs2uDQJN5IjwOMUwWjBC3L2/kEiKrQ4XPmocvRjkHJnZaYM1
	 hfeKpQErjcEuPlNZrvegsjIzX/iQs+ikTrYLrwzBPCSXNx5GhlIq6kIq563RbiasCC
	 NF/Z57V8iHfCTl4r5w/VnKA3Zjp5aWK3i3up6RZz/i6yGVr8hpJQsXbPra24U7WJIX
	 IV82IMTorr6M+6ScqacdT1bcQy4FCo39G5ek+RiZbqQOR4K8bxrwaJdh/BbplWKhG+
	 e5U/YM0IrERaPDCV/KjHWWO3t/NtP9jJhrjkES1BTN2yd7PqtG9Wsp8bDIfCfUoHNO
	 vBS9uULYI5xeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5DE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484875357.4124.9547046813269080721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4c7bb73f79bbf58eda0374d4501125c8697fd1844a424f8d64ae918974956f
Date: Sun, 22 Dec 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734848753
