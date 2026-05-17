Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42253043C8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779048634; cv=none; b=nyZYLp87FaNkTJ+IEbhHbNW7IuQTxh9okMVK/x72S1Q6gm9+R9mzDGQejs1iRyUjLKa3p5gbvIz97TZJHyKy53dbtX18NtFpAIZxfF5ktg3Q9reydONuZ+lrw2j22DQ2IN9Q3kga71EpXEZDKwEFBs0Ra+RDa2fU3FdCtJi5WRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779048634; c=relaxed/simple;
	bh=xLKmvOPLlGtaqhYhDASP9k/5rFT2nnZPmJYJiqg0fUQ=;
	h=To:Subject:From:Message-Id:Date; b=I1uCOSEAXXIm6VqZOAQA9SV71Pn1bK/YL+YvkBpJJqWCLRuDI6GUOelajQB7NDw85J3j1a8a+/vqt6mNpFZkF3SXDcBHBkuD4027viHfPMqTio0YsL7ns5kc1+LI8VuChIeDiMfFjbwOk1X6Z5ieODO29MZhJNZ0QYrEO9gqM/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTgkBZng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTgkBZng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE89C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779048633;
	bh=xLKmvOPLlGtaqhYhDASP9k/5rFT2nnZPmJYJiqg0fUQ=;
	h=To:Subject:From:Date:From;
	b=UTgkBZngv7SKCbOgcMQZxqYM01zj46D/UCDRS7n/4PXziREyaBxps2wj9uQQHfj3L
	 8+85rFBfKS3S+7GpUQDIzLYFzqj2uA6UZnL77XTYYD01lmZ565LMZHD5d24YKycS7t
	 MdhP68l7/xnyShxCGCHt9QEhRuRyqcxdQ07DYRhbdy54mHkxoRrG4jIbwAM8iNWXuH
	 3CMPI9NqLuuBzDYgc2jiveB9+y5Ngua0/XehcdnBZc9jqc5OrP1mmT/UpL89/MEPre
	 fy3kLeRUTy07YPBhaUIFdufVLHSUC/YIMhLGQPFN0v5BqJbJNlRtufsP7AzEgI3XR7
	 /N13CD58rjtXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEECCD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904863369.11466.12803592779621231567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10224527a97f0efb0670451cabfef7ae01f0b3458141783420dcf221bbb87543
Date: Sun, 17 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779048633
