Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F62FEEC8
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747718394; cv=none; b=MgA2XSYEjE+ZeNL6rwIuNFHP7PFz8biMCeJS/VVjv+SvbUKcSofn9kwXY3+3558ZmqvOQI2yhjlvks5UFlCLOY7wyKRNgjpy9nSHz7Rctv4L9ykDapKhzAN5BZFsfRCAR0IFF1xT/OwPdAHM+qTyuIBKov9mu8LgPG1aMomptYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747718394; c=relaxed/simple;
	bh=QP3B/ee5XBdU7UXMhtL2dzNKQ/O9pYrWC0RSiFLSg0E=;
	h=To:Subject:From:Message-Id:Date; b=AeE7cDt4JXWkwoIiIWhd2znLh2zianLS9frKAyISpk0zx8reG6Cm4J5+WdFDhbtuw1nxeUx061cHd9p/DUdI2Ond3+0hEJzT3Pzy8XwHSKoi1olcuFzppjyOR8b+wWGRkwuMvG2e3srcTlvjspKGTvGKFBNBApnRGPQ8OuLxwzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGzAwXs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGzAwXs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47CBC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747718393;
	bh=QP3B/ee5XBdU7UXMhtL2dzNKQ/O9pYrWC0RSiFLSg0E=;
	h=To:Subject:From:Date:From;
	b=HGzAwXs8CMLY4AZc9Aq9nOYk5IdtSxgMJMVB6y4eN3z+W+hJQ9lwjlEez8ApaJ2lO
	 ApbLflijECjEp3X8O4Tdpg+K1f3RPtEgfTJR2gG0xbJXBd3hEvHM3NyNM+rAxlqpsS
	 ia1ftMi5ZAexHtk5vgaF0sRDFXjFVBn2wmo4noqDyVx7PnbORTe7Hja0vB+Do6wyu9
	 oqYgrfTZBEXsf0e1ASCY2+UOSNL/bgWtQaSSnqxUASJs0hHQUgoHLe2GE5C7qGf/j9
	 efAE1/1QtwVDgpEo8zXNdg0cHOYrs1Jr0seHmYLYC9lNuEv1lwdaJ33Ve46wcp8JJT
	 m3puYTgiAjkJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E61DC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771839357.18582.2938458922987344473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f86f1d3eb8ab58f1b66da4e6b38431f94d7bb2d6c606eaddb51a9cae822b76
Date: Tue, 20 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747718393
