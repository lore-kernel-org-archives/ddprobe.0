Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC2B2ECEAB
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758272394; cv=none; b=Fvt6oE2FkYAlpLZH7/4CW2kjYXY62T5Md+LvlsTeiQDLpPA2qF9Opz4rrSJ5qfTPZp9tc08vdP0SfjSsbCWKKcHSi7WH/4J+IIoZWpe7akuvg/rvNT5Rc4YQJwDAFOc/RPB9Iqs5FZuGiCxuyoZIaplv+JqACrQ0DKXEOrq4iN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758272394; c=relaxed/simple;
	bh=HG6TfM2lduE7IqWqxFH29qgmmKyN/EZFQforDN2WD+I=;
	h=To:Subject:From:Message-Id:Date; b=Eogw540gTJMwxJNcUdZkd1xNq1evAgVYAqTdwkX5+jO9OghpoEXSAJoIiyuDUflzmHhcZ2C6LbOKO36BSMj1DINBzoLLVPjZs0Svxd7RWICJ1igxEGaSgttrAmQdLkYhuy4wFE7QtfS+VzKc9oSDcP9owVEd1qEW9A/dJzCsYwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFCB393B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFCB393B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC872C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758272393;
	bh=HG6TfM2lduE7IqWqxFH29qgmmKyN/EZFQforDN2WD+I=;
	h=To:Subject:From:Date:From;
	b=bFCB393BSgwbzUvTMCeEy+qtllecXi5P4UUUEwOYtJxt7qULJShK4Vy4k9Chrs7Zp
	 hNJBZu+jNEOfrsiJm7n0jmoYbPUlGmi8hGZWoPFA4zXvET8W6j/59x2sw4m0FysBBO
	 vJg7q9vB/f2ItiIGtepZBCcc7nvf8Tp8PswWHtMqNNyt5VTt3JbMc1bWkq+PFQC4Xe
	 kNtH+X4j2Fv2zrTweGd1T6FCprheawVA6hIaqLFcB5rSgReVE/ykFP8FHNJS4Z9C8p
	 zbGv5URX2IbbnN5ydqMza3QmdZcvUe2zl5j6FtYxTW1J3J6WxICe5rTaMgksiKnpiw
	 E4K6xAqmonrvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B4FCAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827239361.12919.14572082851175997674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d843e9dafbbaa2768323140a498283b4621d6e919bf7014413293c4688e7f346
Date: Fri, 19 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758272393
