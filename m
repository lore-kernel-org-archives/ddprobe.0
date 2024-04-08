Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359FE1428EE
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712597897; cv=none; b=olz0WAwjGi1SRLWUUL6JzmW77Sqr4EVOnmVpUjknq1WTW/jm3iopbJR0zEe0M76qdLCecs9vQvoY64BqVHPPBOZw7ZFIID6u8UPVWjaTGm+j7LYKkVoTcedWylW2wIR/7T1IG5DtFpETydOdQdsoBhN+dGjrUlKw3fOJoK8JrtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712597897; c=relaxed/simple;
	bh=pZVKKEqDVjU9b4E+dwP2hdv4AjuqN7+kZkl5aZm5u+E=;
	h=To:Subject:From:Message-Id:Date; b=elyfQq5jnQMqLzwDbsSi0vqSiFUwvnmUVoyvma9X+M1p8SlrpM4xV6qtvDZ73byWnXv3WzFFUemWilD8buEcx/1NBQOX0o++0iJGQ7BJ8Af8Cj4w7jgfQxrpWWZnP7rAnnumtOCjZ+cFXg946f3HN+TPg9K7ZFiJMg6+BBoil5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meG/AeRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meG/AeRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C051FC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712597896;
	bh=pZVKKEqDVjU9b4E+dwP2hdv4AjuqN7+kZkl5aZm5u+E=;
	h=To:Subject:From:Date:From;
	b=meG/AeRf1JEzrzCd8uBCoadrYiCtld5qIbw2qZzUE/e6ye3tLlt+ULSCgjt5S9q+0
	 vZUHSmQZ6qW9JfQdy+BKkuLsJdGQIRcbWhX5R9Vi+rArOKu2YuYgLqGOCa9z2XzK/S
	 UiQbUTtfJH6H5qyyzGI4Wd00sfF3+WNtn8asn1b25y4dbsXz0f7YUQf8NLY7i9whiV
	 lUhlHrBKQdpTwf8jQ1pbe2KvsGfkUQ3/DDmu6SaKYrNgkQmma7oA3bgI8ytGfm+o/8
	 T5tKku/OdZBD+1k8kxJ3CGu81yS4XO27SPLpPzEKgGdMWQCAH8pGzByXDTXCenrZfb
	 pXOjH9v/Df7lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CFAEC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171259789645.4066.13828244097226520303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463906cc82af0a5b07094d9e32d4f022ac9fb741b17c4b31714dff3441cfeaca
Date: Mon, 08 Apr 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712597896
