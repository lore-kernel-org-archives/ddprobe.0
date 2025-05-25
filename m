Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AF61F8BC6
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748197794; cv=none; b=pLEuvnNtXqcAOr9qjstSNSZf8EZiV1aIC9+pGwCYlT8PmN8QFLgNrh7XNy6EpRxw6JElTY5QciQlr2VA4P8PQ6cOWY74TAWGmUuB07fA/pwSmt989Wwgv7gteM8rLJh1z/Y4Z42GVO5AxLES9MLN2fiTqKlTFfzeCuvWUlBVuyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748197794; c=relaxed/simple;
	bh=VMN7ebCdnSgCk2UUjL4R8/EhpM6r2TMjsRUykm/rTZY=;
	h=To:Subject:From:Message-Id:Date; b=ANr4wSa+hhVUPXTP5PlkVuAlkG0tCAFUhWbO+mQW1GjWf/o+dSHv1y7aqHKrqOLipL/Z0egR/eVgbsfS7q4cUj7a6yMnlnp9jimJIGdX4YjiefvZatahrDNoymNgmUO9u8oryDcP/RVZqOQfe1G5P4gsJyFwmgbYfpS7WY/A7wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9Wmhj7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9Wmhj7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2252C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748197793;
	bh=VMN7ebCdnSgCk2UUjL4R8/EhpM6r2TMjsRUykm/rTZY=;
	h=To:Subject:From:Date:From;
	b=o9Wmhj7VeDNcwvbVDipRgv49G0VMPI6kcj0tuzBpl0gHaifBSi6QnnGWAdeDOOFLK
	 49Fq5PKlOg+GpQEtyUBNybinSI28e+TwcNiFrRzLKIsMn7h2puV/8aROztlST2dz8I
	 ES1+yhQiZRACVWHXpTFVHm69hCRMgoWHLcfDPZg54ELRtJpKnqG6lU8E0fwDBjs7pw
	 OfeXsIO5XnjnK70apyzwKXHt/g2HHXnVrwLMO9LQ4hEtDCmmWfuvC845GJPjUnPHBh
	 DRXZo+X0FiFxIr2sixz8JClrcmgYbVpwMThDZMhuh0CocJSGprx7NFQvSUTecCupXs
	 Mqg07QOaJ+Ilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B5C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819779357.21967.13592214815852105246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d584c0c5f129b2074156a351066856a32f44387aae5628a92921e59cfc6174
Date: Sun, 25 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748197793
