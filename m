Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA22309F1D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773294893; cv=none; b=BQoxtKksm3+k4q4J0IzViY0bP/u36AUnpEFnGEYuT3NNSgc2awFiH53CbFwbG5Ahws04tCaqwqJ/7q4oufQB9gi1/7Dg9H+PseqhdJmP8vD7RdMQOsh8KzQmdwJ/jwg51e7SooiZmPePx+ORo9f9JgqtfPvahD9Az3gRoqfCoMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773294893; c=relaxed/simple;
	bh=7qqTp0WanmCih/Yq7aHcBikOhBV/chI4lf9m+a10LI0=;
	h=To:Subject:From:Message-Id:Date; b=ri2lEJYHKnR2OAs4zWNOhnBKp7U2gl9DXMOr4EuRGXIAIXVVoz6FeJ6N6JsQ9Wq2CGKicKEfJs3Pgt0HFv8vDXBwnMfEmhMn3rq3IdZLmF5U07dNalOuR+o3HT+KoLZCtwcVCOo+XKjOCiy9NX6TPzzUwZaxQC4PoOwaj/dKhuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+RkMetS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+RkMetS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6511C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773294893;
	bh=7qqTp0WanmCih/Yq7aHcBikOhBV/chI4lf9m+a10LI0=;
	h=To:Subject:From:Date:From;
	b=h+RkMetSQy3XaGG81IE7XsXuwdd8SkL/X/t8CDp/pnHKthUuAgJwPNzxCQyFxAf8j
	 daLkSXPqR+tXTw7lsOQC4vXskpIUzavs4BR86fFXvdUwYjBgPjh2XYLY8p0yIm7cC5
	 iKjUSNVj9IRLDrCwGTa6Eko0eI48Xr2UqruaW+SpaiDZ9ktN5rkaaanu981rGTQtK8
	 Ek0mniHMMB/iPWSXCqRE/DZtSFppDtf4P7RufJ7/qN5RbcGOeU8fMlUHbtYvYzyiD2
	 QhYsvVPjD3AikVOywdZWDNHlfhGTVa48dGZ8I/v2Au3YFQccsRvJotVUkHuBV4fDdT
	 UV75WPk2LXsbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95228FED2D3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329489357.6235.9210498638981897900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81bf5ce535e3c8c0f73dcae20e177d29a08867a405a56e64938d6785b23058e
Date: Thu, 12 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773294893
