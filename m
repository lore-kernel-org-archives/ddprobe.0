Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0737F34D385
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774612494; cv=none; b=EqDWHfcv1+Q02MQhLil2pNVhfA4vuQuYQqdFaXvUk3vKI028CWD6Py0YcpqbTsjuUn+zg5stOPyWcR0Ef/JTlScwg8Kzz18rgWGYOEHkqhyqkNZQfRmp70YN0my0AiwXYa/vU0hzL9doEFdYFGF3Azo860+AXRVMNtoiXkCQ7Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774612494; c=relaxed/simple;
	bh=1E+13srBSAAg3IyfoC7veH0/In9JhOb3HbR0viKLeZI=;
	h=To:Subject:From:Message-Id:Date; b=hVnkP6JSifSAbG6UBK+0a0gqFXzul6u/atnqlhwLWJT3K3UwA4aUZmeTju0BwkmvHtDS2X2BKBuW93psMz5e7cTJqUdeql+Sxn9c+Xmi5eXX0LO/TG80VKM18BU1enyPoBiQgIzvMNSllpplRlMqYZ8WRTsZexGQZH9i2+jy3OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwwBQpQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwwBQpQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B49C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774612493;
	bh=1E+13srBSAAg3IyfoC7veH0/In9JhOb3HbR0viKLeZI=;
	h=To:Subject:From:Date:From;
	b=JwwBQpQIi6ue9WrNgxqVxdkOI8FwOVM914H7dvMOT10pTxkBRjLVya4hnacSLfrul
	 M6n0Qk9/sjCkPOt9pckUNflhICL7WYHioW3Qr5mh5HycbtnA6nAB33EJwjND+Iqs1W
	 zws/UPrhYpjURHWGXzcwA5k4wERR+BXLek5cqyASlzDlNXt5SiWLXTAXBux0Nocp/d
	 h0FOFMzDxwioQB1Zo2YJkSWxthAHORj1fGCr3UGgWEzWyEQxN5XlFW5SrHc/9lCGKp
	 1bTM/LZ91Rn7SGD9zxqYfyFPav71bWrk/re1i5fubOyGv/nvNEn4EYydzvKHX8fwTK
	 4PbFqgFIfcdzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4810ED65C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461249358.7685.16682310569102689922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49133a416f758f2c2aab40d22d0fbf69a787557360295cca851fea3b9574165
Date: Fri, 27 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774612493
