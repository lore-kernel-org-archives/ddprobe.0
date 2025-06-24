Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85EB221297
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750737593; cv=none; b=sI/iwqdCBcTU0eDHOuUP1Dv8/PHuSVpnAGcvu7or2b0f+3v9y+Jwu2UrZBB7IDhmAfZzB24VwZwzAoVRO/aZW0D1pa/BzYp/IMIqaZZnA7/qDrkUobGzERTeziW0IMpYEbcFMHiKt81ll/37VgljlzTeon9QZbs4BTGvC0ksHNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750737593; c=relaxed/simple;
	bh=0iYQ3CoNID2QBpOQe7R5W+SGET+R3FLH8bZHQNiTq2E=;
	h=To:Subject:From:Message-Id:Date; b=Yv+rwvrWXHYd+cuKHtqjEFLRjPicsbX6GFESfCbgCRpIfYB+sSjzcgDMP11a85obi61l+lwwSHSWlLp0ZG1Al8c630AU54xftkb/LTK+6CHcHdmKg92bQHYHeAn2A0ch7eKzjs8RqSjYecbHFrSZRRy3Vkaunn1CfgmxSO474wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjIPFG0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjIPFG0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF33C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750737593;
	bh=0iYQ3CoNID2QBpOQe7R5W+SGET+R3FLH8bZHQNiTq2E=;
	h=To:Subject:From:Date:From;
	b=SjIPFG0xRlGJkbXf8Q/PmIzEstJzQk5tCfAmqkLoWhoceZS2qYjUWzB+b3UnL8iZj
	 JIj4ePCtTgn+I4Ki44rJ2sEoVC5OKmnmUqPygjiVPo+iOaUFd5vFaSGE/bJYN19QNt
	 kFiVt7kPKZpQU5x54vIApE/uhJ1m3diu/CzbmC3BcNycG1yfZt0+uwjM8P7fyuq9uv
	 X5x4vzqnUePx3J51apW/JPc9yxNp6d5aehyIo/TfVaPGYsu/k7pPQDwF+bRhJB7WKJ
	 st6jK67Dj5gks/FzvJCd2oeLRPJuuFfj6S8nkvV1UDkFYziz8h5GlreclTU55G/6FF
	 y/6KZCqKRAu6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE6C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073759357.8823.8711025395039335897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb48f6a95ab2af170bc926c0981ea505a83e0704804109e12fdf5972aac586b9
Date: Tue, 24 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750737593
