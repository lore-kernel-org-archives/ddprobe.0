Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F90E14C5AA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737564354; cv=none; b=Kog5Ofvg5cdCVIycva4ZP0ZB/R4o5gYqMUDLtpszrZuXSX4xMQyc8OfNWd/9r4NiA0+WS4itL7oiBB894n8C0DQQh3zJ8+g4DS/Capv9U1s9TqvtHUEw3LIVjE7xSbUHJnBds8goZo10at2OOcQ6FhcUwyMzXh9RRU45nxB44MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737564354; c=relaxed/simple;
	bh=0W34STL9Km8ue4T2JWVzlgKL+nrYxpp8fDkihHkSdzw=;
	h=To:Subject:From:Message-Id:Date; b=h+QQNd/CyxIOEws1iQ7bZn+cpe6WvfIHjEScmxnm42cKhaKgeqYs7ngjI0ym/+YE/9WYq5u4BQ7Zw6/WcKVHr4YSVYTyiZFCZY/wMMbSz+MGvlZxLv3GJJzgZIPNVr/f+3Yzfsz+vPXeL9E4wB2aIm4Z/0coUhXbJKLM0Nd2Uew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVkejYmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVkejYmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAA1C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737564353;
	bh=0W34STL9Km8ue4T2JWVzlgKL+nrYxpp8fDkihHkSdzw=;
	h=To:Subject:From:Date:From;
	b=GVkejYmO4G0wSvD5ZCJD35WAbXCdlAnX1OsmVgbkSibvy7So5AgRBuzewNE+5b2Bm
	 SH1XuQU4zZfE4kdZXnrOidPC7N9wAIsA61ITWJCpi3wIDJV0HI2c7R4MoH7HikPw6N
	 xBfVhng4DtVwnZSlannoI2E71O9Vk4XgkcE4P1kUiNzqWInRXKA5gs/f7hXV9CDPwo
	 Sp27P/60S3hvREByuQwBZhMmdQRbJgcfd0Ng9Dw+Wzen3QKcVUMn1Gm/Vyma/9KaX/
	 ho9zJceFyK1DWiKSse8Dfih/hTKKyKRFVxQofyeXrinRA25ZqHSGOuVDj8xfaDIii+
	 4dbkAU9jnhuCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955EBC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756435357.5314.9032532576042823331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e367eef9cc9e00c652494398ce034b74a77401dfc50ccbf18989dc3e61030c3
Date: Wed, 22 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737564353
