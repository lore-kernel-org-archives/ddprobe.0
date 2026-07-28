Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3162940A953
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785280834; cv=none; b=JTWpCVNC432GCkzV79SxAw/LI2VAwZHS37Xx3/Qu/wxFnj9UP2YYUGKIzUl4WxwB9qpT9kqhDNEGNBskQTVwS1t7taEo4lpKMxyycb1ZyoxoxYGKgCqSUKvaMyllHNLU0Dlw/zPUn13Np/Tkv4sSu7mGgSNxte62WMP+E9u+D4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785280834; c=relaxed/simple;
	bh=kFdqq2LFGNKQ15N/haw9eSqBIXbMGrkIkr0f/D/IB0s=;
	h=To:Subject:From:Message-Id:Date; b=uL3ktjGcntlr8j7H3ZXLS5HuV3cF+FAduBNrahEDAUDYqNEgaEusb8XWzpyK6zzycKiZc9tPcSON8XIPN5ETiecV9cLuzaXvWcuRlwEqfqMuiziPd603LEa2Lsrf7JiggymN3SHNgkV4sHfQ1ahS3XU2vkK0eG+ZFvjVJdcuY6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spg1sl2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spg1sl2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C573BC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785280833;
	bh=kFdqq2LFGNKQ15N/haw9eSqBIXbMGrkIkr0f/D/IB0s=;
	h=To:Subject:From:Date:From;
	b=spg1sl2ioYmA7lUq9D0wcd0hHvIaClrRqWmzxDkJwRJcx7+82j6R7RN98DnKJ1PgP
	 QWVZ9qIM9Xpbl7uv3wQidgwh7NbCXuiHLLRIMfIo6W+fRxzUbxQaD+o8kaWP5F8Chh
	 emMF/khLQnHImJAAAx9CzFZfyyBupByw/qbPW1ffalbFUfKaEvfF36+ZF5041ZmlmG
	 YMMJftfONgPM4hYOuTodtvVZPZnC4KkSixxNsUL/DKrOIadXRNJALXwAVsOKZ9or09
	 AjAKSgSZLh7N+tLg86+YXtrOjS/Ie/VFM2gi6gsrnxVaCrkEi9Kid6ztybrBSodP0H
	 90VEPSRkab/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEBCC54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528083368.22180.6920912872749209349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd02f3176604b6cc02ee8d4c6efe9563843057b7ca7287bed80f01112d975af
Date: Tue, 28 Jul 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785280833
