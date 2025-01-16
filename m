Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D7B14884F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737061554; cv=none; b=D+3XPhASzafLG/Z05XEsR4TiaZI1qGU5mcTYUuWWQITcCzzj3ol/9IUdBku/SUoAOuDXNtEBG/d8jK2S3Dok7TXyWKy8RBlo8HCfOqvJ/hGG3sdYg3q2F6uGmFIGz2bLPyWetx2cM177YsrM4l0LKRNn6MR8qktLdfMe/wI/91k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737061554; c=relaxed/simple;
	bh=0L3gRrE+0ypB4Rw6E3ioZQ/Gqn1RxgdC2wafQoNO8s0=;
	h=To:Subject:From:Message-Id:Date; b=PP8TN/tHTPZVp/nARGKmYciKY8NKcdhxsEnlxgh8Ds2H0qMlCa9Rui+7NXk7fYgTFUHlvAmKHdPHqH2FXiRl/B+fqbSadrbTHmA4sqWzoDzG217mdy/MxzZqkBE77g4+Co+5Txfd6rIsv1B/5L8ARHUjk+P/wa7L9LA5CsBpd10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X++EXSG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X++EXSG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4969C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737061553;
	bh=0L3gRrE+0ypB4Rw6E3ioZQ/Gqn1RxgdC2wafQoNO8s0=;
	h=To:Subject:From:Date:From;
	b=X++EXSG71HByxpWXjtZW74fydud6lR1sTmxCH2Cq4Y9/0yEy03/uMaZj65lZwsEtO
	 m2bFwM/1XZB0NyiThB9dMmd4vGfC5ObojPJM8ju2p4c5U4YcC8r2Jx2+BiZb/H2z08
	 SSxU+IIRgTNAOkEhdxwFatrc0mWkH+WeqDsVK5jbox7PFlue8aHxJ26HnUzZRRL5x2
	 /NjyV1gHE1KyFDJ1uS1a9pxPqKDjFTWGT02eUGEWPJbNy5uFLI1oR7ABwNJf1P7pux
	 Kr20g7Uc8USSte1ecfPSwgtvrPpdd6wSzVchB9hGIoagZQDTrFPA9+BVUzMdvJfb4/
	 26HzpJPLkEdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977CBC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706155359.21624.2793628430866248477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccdac08897910b0bf86e60c9608a5c70a65787cf955b48bb9bd9ffd3c653147
Date: Thu, 16 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737061553
