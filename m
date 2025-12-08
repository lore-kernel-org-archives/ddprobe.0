Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B53156236
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765181574; cv=none; b=hVvoPHk/Eq6tQZM6xpoKKDcKe9mawJobCHEAbXv4EsTV3KJw0A0KaTv/udJy9Hm2SkxNsMEeGDg3stVxC4NI/Onga+NLp4vQs4DfZ9aJcnv95MMbwyGl4FqmY3p/IJ6yqvBCUOQk5p+dLPyI1or/tL4I9oBkn8LVjOTKvIkX9mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765181574; c=relaxed/simple;
	bh=6dz7nGF+vde7MTh+nVTC8TGqa72hnNlCPCZXUAQk7Dk=;
	h=To:Subject:From:Message-Id:Date; b=gpapG0S8sKcn0ztciXVOit8dIbpivj7Y1OdFIk6kUnkld83GawnXgsEpWHXk9GNJfnMvwP1yGaSVJoKM+JWFAKHBLVVaQ1hKolzXMrzZaCFWOSI/pjEBRL1cNlb6itNzg0wRVdw7HHbzOPAhKGTZ5jxpBxS1r9rQwIDwjdS0DUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrtuDRw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrtuDRw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD85C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765181573;
	bh=6dz7nGF+vde7MTh+nVTC8TGqa72hnNlCPCZXUAQk7Dk=;
	h=To:Subject:From:Date:From;
	b=DrtuDRw6eorwFhfe0a6Tx4HS1a3zvCRDT9jd4WKMSam6dTrUPnRJz4tqAEqh46xyt
	 SxrQguTuHhts29L2179Ik9JOJC73iUhKNKQXyzpR0MBnHWLGr3B7PuyFjwN324svOd
	 NE8TAe+1pLJ+t8TluxyzQGe8wweKPYlooKa/fa1cgFZiQy98aYRtpxRcNZYUxGCoO9
	 qBwIYnVSMjnp7Fftv83vj1PcDh5bPjd8ORey/ajbsCZWIOEbBemGSjlNATFHmoWgxu
	 46YgfqeOxT/ZEKAF/Fnv8diVY0+kxS7Pnd055wl72bRIjfIJlFQj310S3Uh+F1otpx
	 +hWja9Eroteog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93592D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518157359.31072.3386108003633643034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3fc986e81127eb07d3f08172d44529c052a095eda688fd880bfb48ffbeed5ec
Date: Mon, 08 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765181573
