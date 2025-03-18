Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E901F5E6
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742284794; cv=none; b=rjj0sL8FqyUHHYXi2qiLdQuvpz/2B0e8R/tcuZHXuYdPJRqy37UJULk2wQHHFklb6u4bR+qm+uGhesGtkQ4dv5wNJIWS6CUZglsXDhZtMBrLU9zJ5oUzxgta3mnee/XTirDQX0DcKnaB4FvUVVHeOcGrEWrMNi62GmrV2WRe9ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742284794; c=relaxed/simple;
	bh=QLhBkzjsVtRBtHtxZSplbrMLTM6/FBkwqrJY3CXwD6U=;
	h=To:Subject:From:Message-Id:Date; b=V0xxv427fBEObm3AxU9SxRY8uVcEKUOmKHxJG5Kqk0t/jilppdn9aCC+pParDs10a4Dp0rf5ZDHShxbLOnSWeUgbfvi9Prf+FUOG+mo4DP9xHlhuklZH14rhp0C75RxgpnxwOuSZsQjYDfHaroHd0SKzWOXEvpfPrGH50mhLXPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/H5ArF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/H5ArF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BFCC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742284793;
	bh=QLhBkzjsVtRBtHtxZSplbrMLTM6/FBkwqrJY3CXwD6U=;
	h=To:Subject:From:Date:From;
	b=t/H5ArF2UZtdxxXkWLXbMCbsM6XKR5fGGrsgC/hnFccP49QGsr/p1qPWrcrpKWdpJ
	 ndQSXKfvHK3pbUB7vw5odKx8wuri7TD1oxu/8bd+tHt8H5Ui/O3bAU4vVzBTmlDPmv
	 yFJcL/bK4DVItlKXx2LMPPeMvNgfLJtX2umnFKqEpWK/i47JHPDT1wnskMjcW/ls48
	 OwCqfRjfFzkAPJoN0ffo0pWI1bsdL0cl658+psTVAdk7yKGRo55rzI0RMiYJIEyk3T
	 xmdGV3tXHA1l/lVa4Axf60ABP/23dpbl6rrgKZACdPpek7WbkGab7V0GBjYAIbk41a
	 vTnaFFCsQ1t5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D8AC28B28
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228479365.4007.14457087094513450289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c84b41ad7c23805bcdffa24504ae5aa90055e859a769d1ab393f209efeb9b0
Date: Tue, 18 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742284793
