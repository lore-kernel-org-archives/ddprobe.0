Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266EC26F299
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764426174; cv=none; b=XPQ31iwyqgfhKcKYsgjkcA0d9R/uYW5VPjZmRv3Bz9Nm/8OzAy690+/nAkIL7Zq/oMIFtwqVaVG8qzJ0ZpTbuL2oa5aK+TYbDE7azrpWG2WAoHyr41w3Gv2dhfRsNQkPdu9Z7oXyxQYRXMkZpvyApn3xrjbGwBkUcyMwcs88L0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764426174; c=relaxed/simple;
	bh=+F9Sqfch9M2RHYxIJyehsWYDrfI1NL5/tlCOICBVWRA=;
	h=To:Subject:From:Message-Id:Date; b=FLYDxM9ZNhyFdE9I6DkoHgbBzq9jU4hnkavArrWdDHIwIgq/g5sy3Ep4FqrHuthy0D3Br+9VVeOVUDiOskitQaHpFzUu+citimAgEwSScpJmPR7sslF0BxAs5aJXdOVPA7f8GyCDzViZSbvF3QE/PWKVH7+bCt/1U4czi9dAkyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1IcnHLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1IcnHLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DE1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764426173;
	bh=+F9Sqfch9M2RHYxIJyehsWYDrfI1NL5/tlCOICBVWRA=;
	h=To:Subject:From:Date:From;
	b=D1IcnHLCUm6XKzvqjNer1uMqbK56g1OWG05w2eXP5tFmTx96S+pJRuePa8R5x6DnR
	 aw4Z6noAyLVH+sU+HChLEYlDGwG78N87hd0nlASgvy4+QhAsw87B3KCH5gD7kSkKeR
	 8RwruxQm3dOzJrAa9vLmIhAEKqbBHOb8pga/sDwRQ88yVMerqNqRss3yeIK2xQzSD+
	 JthAmgeUBGvQMeiy0gPuJpcjUpAVsiTEPXvxyy9BoWn6pvTstQAXviqWnyVvkhN8Zj
	 aGHLraDz/YeFMf0wgCcGX3YS/8Ja2QeGVfPtEaTbESJ3i42jLs6M1qCRTnFbpaqnyz
	 7Fozyh8aaP0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B4CD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442617358.14846.10013105406661234934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cde390255e1fa3bde23949b041dd12d31f5bb15f3c71b2a7338d14969f1b198
Date: Sat, 29 Nov 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764426173
