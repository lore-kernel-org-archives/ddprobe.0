Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F4533BBCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761856794; cv=none; b=nCIsqKmNQYoPbVohQ0uXCbccoq5kEurJT+3dzc25CMHXXcqwZ8hD+kn50d4rbgFmboZDDu1Sny04vCdjKLML77gM1jkXNq6Ybp6GPP4GFdq5stjKhr2Bp+Mg73Jv4AmGrxtoj8HNt9lVf8qlNYuZvK46dO0hCrnbFtvjaQ7sf64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761856794; c=relaxed/simple;
	bh=wP8Mp0WR2q8PJJcujz9YCoTWWyeOqQJf4hvDMprV2hE=;
	h=To:Subject:From:Message-Id:Date; b=hukoK6WQyokQSbaqBG6DPObUjLVbnyoLOn261CO4HIqyRgtwq/zwOXL2NW4b69CiPD68rUYK+b9KxFrK4+SdfZoq3hLjm0WxCvfK+7Aa4J1A8dWAtu1E+qKHit5ohEEKjZXX8xS4T1jIBu7CYhca4q8Y/dP3cACNpBsjyZU9eXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWjK6gmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWjK6gmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF6BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761856793;
	bh=wP8Mp0WR2q8PJJcujz9YCoTWWyeOqQJf4hvDMprV2hE=;
	h=To:Subject:From:Date:From;
	b=SWjK6gmRA4CZ5LOakB+O5OyXB16nXb2IVxhHC3Q/HXG1GeT5x/O/aBKuOQb0gMKt+
	 dqsulyjbG5iob/vT4X0mdE8smuNz8u+rmVKVZveiewzpXTSQSbCHjEhniJsB2jFOTq
	 LD+4i0BUEwlFLCE4mrVILjCTeq8vEDMlHLO73tRj7N2glBUb2rCJdCeso09/4NWh1q
	 DNu36zN2r3VKjFnuzkqAJbPWTjtMtecYyJAKbp4Vk9Y6Q3smeproNjp8lIz3dPGLzI
	 jSTlHohDJ2+d4BmBJtQlilX/A6l8rko6rWIp/dBIKUo4At3WKnUTs1A7FTj1WQRxcR
	 kw7ANMjiiy46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9084FCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185679358.18332.4381218190001379861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ed86ecaa4710f9dabdedf18ae51fbdad3883b64e6d19479aaa010db5bcacee
Date: Thu, 30 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761856793
