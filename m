Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395F02E628
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743998394; cv=none; b=fLTgOFA3r/eg4ULlK/E8+ZlN4kAVMkLZWkzqFqlrl1VyCI4YNTKcZKXRdGo80NUbpfkXOEwJeu5RnPW1EpqDY5L41PqxMsNbsUgUwGmHHWtdTPFJBmnujRT8R5VMiin+GfPgVtkzL+P9W3fps9PXWbZLIyPx6Xb9gK2CTFzegvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743998394; c=relaxed/simple;
	bh=xheiU+uaTk8L43kf9CfgLOcuDPMiQaJMQGvqUztIJWw=;
	h=To:Subject:From:Message-Id:Date; b=Sw2kCSn1ZxE+rVfRCyRlpMmqHRjDQ39r/8xTsBs5X6P2MhbpsXY/3KQE1GwOPJafz34cHxrbOixlqycKd0ELRTwUCkXuHYEsz4H2YDXBVymQn9KPqa+yJdgUCkd9rCUW9C7qwbl9Snxd58loZcP2v+FcnoU2eO6t0tMm43O+Kgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2BjaZHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2BjaZHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6BCC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743998393;
	bh=xheiU+uaTk8L43kf9CfgLOcuDPMiQaJMQGvqUztIJWw=;
	h=To:Subject:From:Date:From;
	b=Z2BjaZHG6uo0hDgm1lOYmH7SUCYWCMSPrsP4+/x6XPFcF50EIblJPbU9owgVwOEsT
	 SC//9K7n/QuVkUD9WkN5HX0Kn7GDIh4FwOtceLyVIX4tg1V8ycmyBf/LKfEO1+bpNZ
	 wea44TJiOBfS3D7NddB4uxZpwHi/aIhtjCoMLc6CfTgzg3D2MB7T3JUk9SVfpBAKod
	 uKa+8A0BVuCeqeI+9uxcs3TGkyxnNa93Qap9v+vVTCliFrBpK3Y/6HJqStcfBarKzp
	 oATszeLI8r3/tO1kTAESAjvKR1gWYJW6hIi/OPbK+rwLYxtodjiX0xKSg+o75YCBHi
	 HMEpuHPBJsZVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986B6C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399839361.5396.12813428346958289839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717682c712e584641dd63790e52683595b27306b1a9eb6154ed9980c258c0a59
Date: Mon, 07 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743998393
