Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CE7284884
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772855693; cv=none; b=AlISJu1vX5q3AeSdwgl0YkRE2o2XWwceMc4ygKodmENXaWT1/vWqYtmGGLP0hbVoGcJ8ztU8JXwMM3RjCVEipFRGgviqJjwC8fPxtMyzH3pD/IzdtxCxaGs7dWHq0KZfj9vJVWGwoiJopGmgqTbhbEY3RG3DcY/sWHJxnAZLn6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772855693; c=relaxed/simple;
	bh=GmKyMhWRJ1TSezsuFeb6AGWjcG+KLQCtTx4vfUqDryc=;
	h=To:Subject:From:Message-Id:Date; b=dMNCMmzTKaLui+rnQyJ+HC/KprhQ+NCZsKio46OhxVn8k0vNVQ+Gc09omEQQqIU9vB5Joa8Er+iJf0Xp3MVMunGX9hMdhyicCNylR6yI+6eXbAtksY3iQ10d9MtBB+aIqwbiuB1Jl+RWQ7+bskll0lUm1X9fxT0eKThQsrIeKAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk8cb2cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk8cb2cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1757C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772855693;
	bh=GmKyMhWRJ1TSezsuFeb6AGWjcG+KLQCtTx4vfUqDryc=;
	h=To:Subject:From:Date:From;
	b=gk8cb2cq7NNPB2XvZq+8ZdhXNrC+xbaq9ynuqqotI5KiHIC1VpcQ15UYBQHixqjG7
	 c0SBIT2Gmm+CwOKzr6JblfZygvU6xUJ9vNZiSB0ny14G5800wsrJhrIV/HJJI4bBrh
	 SYul3jy5SBjuVtkS2JVgjvNiSKkvfK8gfGp+Laa5gMaQKJCW8/vBFk9wljh9qkrh/N
	 Oorxkj5ZQDoBIyYV3U3eMUqehly5hZ161lZ3HE2JspkbxGQMY12ccNEWVpCimckSj2
	 8G1kYBHR/3p/sSMSyuWFqSIi2WxyrcZMjfTQr2ICKJKYwIIzDy5agt4ciXdXQVHpEq
	 bKmUicP7vDLAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52FFC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285569357.2329.6141395394271578312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d89075f432683cb7d59f4548e898134fc5c9e61b8431a143738621e1d61275
Date: Sat, 07 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772855693
