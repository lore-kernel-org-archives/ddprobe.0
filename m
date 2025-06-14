Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADD129CE1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749861595; cv=none; b=UFQu1ncb0NAhZmjFJL9Uty1xj+fQnI90oT9fFR4knGX9R7M8FEkYG9jJnPJ46d4VjAZmUVditaqTY7o0tmGGtech4k3apyDpemYfoc4ztXTVrEbCysvyPLTz1GIWoM+x/kXHGOoy8/JOfusJKrg4T6J5d4MjymIu7ZzGE3nGbm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749861595; c=relaxed/simple;
	bh=/wxZjqIO06h/tpiIOj+xKfTm5KMxRn3NQ7fUw5G6tZI=;
	h=To:Subject:From:Message-Id:Date; b=GZKutcT8eS2ffpBTLf/bC3a7vDhw0/vLLw4SKiQVgMZJ2rx6mxZcHXNyiyqG5qATZktWFDksbOju+o9eWRGKX47cVU3Xm/e6j6kw7HcmV545v9EZGA1wJNc6JDabSnrLUNfkjXbO16O1JzEwCLEMvE4yP7NIEmtEIQgU3hqCvhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irGtcKu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irGtcKu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1559C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749861593;
	bh=/wxZjqIO06h/tpiIOj+xKfTm5KMxRn3NQ7fUw5G6tZI=;
	h=To:Subject:From:Date:From;
	b=irGtcKu6zNBYpN7mQUilHXozI3sl88+9tGRJaOXcPwOppdhy6VdBSqaJEpjcA77Yx
	 iisC57I8ZfWpd7X9xCEPo3iICFEIdaUMnnwETDVLWaaD2VRUSRUlx6zx7OG3VVcQBI
	 Ht1LvrjJPjgH4ybB2TR0lGDrvClhxp8yBSxVhKHXs5twcTY1sbndGokgwNn0l947IS
	 gL+601/Bl5JwDkJ0Zfz61cp5yTUG0yAE6lQLkRAqbkPwa8uq2I6LDcXS247v9SDjkn
	 QVYkDWLyFTGgSn1CFngfoeqBUL589DAcXeAT0JdKUxgqKAd1dEqBoPSQbovUAWScHY
	 cAIH7yJJk0Gfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A216DC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986159363.4708.2410223281294867507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0840646da6c762d07296be8bf974221f409189e3eea207e8c9ed3d684a6ca0
Date: Sat, 14 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749861593
