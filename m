Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F2354BC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750904395; cv=none; b=Ep7Maw5l04EPI8ZkeDh6Egd2cSZut82HGj0TvZsILaSgK1mcTtHaJAjgCLYlkyCSMbvsxocT7rbO8g49+ICEdis2TprKFWZGh1ryDz9Gg6FlBnDzpe7dHiErefRqgBoJWPBWZxlK/2rw9zHD/gWPF0YsORxplp/iaAtN3qlPHAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750904395; c=relaxed/simple;
	bh=Woy8zXG7IFYA5RByK06Vn5+c9Mj5xwUOlJTbEdEuDl4=;
	h=To:Subject:From:Message-Id:Date; b=IxmhYcna7/XEvzrUgIL6xhuo9RR1V0CxufOjHE7HSCy9CIXyb/z0i7NUD/Kq6wcKjd70MI1b78VmKo89gjyA1RNOeZXbTpBXMFCtTnGiV519A59DGpjC81K0THaJ+g0oPT+S4l5rJBhgoL8PkMRvmsLoKxJG8vsTKrabFhnXRm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8oSwtb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8oSwtb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F85C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750904393;
	bh=Woy8zXG7IFYA5RByK06Vn5+c9Mj5xwUOlJTbEdEuDl4=;
	h=To:Subject:From:Date:From;
	b=E8oSwtb5t8ddtMji0AaVlBe/1+Mfc5cIffhvRzoZGsqFd0xBkjGfvSKE8NkS8p0+g
	 ThF8JwLLNzP4F5YPbvTRwJttne3rBL4+x7Xk3koMfRWi6qVt1mH7E0WAQNzb9j5LH1
	 2Lztmha4ffegXrSn+NhDIgrx8ozFxbim5iLACkjS1FHTkq+0glTNTao9yPXv6zh6TI
	 s90lxGQUKcY2YY0WVCaJUpldOusQUWTC/dde86mzywiHCM6TlyfA+R4b1JeHGYFWBW
	 hg6VBha5Tw5v44QdMgcA6uD2AVlfdJiiUFs+69a268pQFgX3OUuz0KEcJxCmhHvMCA
	 +2dQETJXhmuQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BA5C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090439361.13966.6130735555263737500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decfd2a4e1ce3ab1c5561deadd25024a66be3905c481fa508a076fa658351be5
Date: Thu, 26 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750904393
