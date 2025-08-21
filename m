Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25514296BA6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755757794; cv=none; b=aooJbIkYxEWlg9n4r7eG4vj2k/6+pZ9v+xEDqKS+N7ywQBvdW0Qg+r+vC6exhgrvp2XH7C5FOMyx82M98oDXAnd1j6A594JpJEvNWDGMMZZslyJX0wI7QAhrpE2MtC5D9O8qAbGkxIkHW0w6yIf1FhjE29MOP7xMg7w0mm1NfZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755757794; c=relaxed/simple;
	bh=fApK5oVyq8To3AAlsCxU1h2mKtlXVhaARGCKhc6ExFU=;
	h=To:Subject:From:Message-Id:Date; b=CK3X+z4gDP8NqwAipVQ90BdS3ATuYDUhHRvhe9za2shlvTvLgmEpPCctUgxb8tEBpeGw+NoSnxaoEaTIkW/Q516IJUZcojX8VZo4kfs1Ry7wELd+UMA+4NrJEGdKVKTDanMKW6vb4gEJjfXzlCiNlLBvfOc9rDFCxO5PNQa2IQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/5stRg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/5stRg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2104C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755757793;
	bh=fApK5oVyq8To3AAlsCxU1h2mKtlXVhaARGCKhc6ExFU=;
	h=To:Subject:From:Date:From;
	b=t/5stRg356N2+Fmyf6kwJLEeiDSFJsNFyjX7rXrN8+c8e3WN+TM8OMKGbNie6J/RO
	 lLPu0vLdMAO1fuwtliQv4vZDG/bqt1edyfSvwD1Es3B6Qih+R8IPKT6/gNi/CjTTwH
	 xoHR6ngVTWhjEtKIOnzTpKBmWLGfVdHmGtnJkzoMAR9uFMLNxSWiErqVeNRPNED1D0
	 JswNdS/Cb5Gjm9yr7BiKKL3nXyitIJxXYcdMII5of8dLBhEIVleefqBCgjzjG033Vp
	 QD/e6Jmdgi1scJTB2dSfgk3u6N21G1dY71Wozrj5G599qp77eYNzuUq1+RoHdaqlZp
	 jXpEjp+ElHbYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A7ACA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575779359.31439.973108267382449145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ce82de070c0795f121801ad3a721a4fe0ef832f788b38ad88172dc0622c4e6
Date: Thu, 21 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755757793
