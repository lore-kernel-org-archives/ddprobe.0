Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021162690F9
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757476194; cv=none; b=OXuHnT7t5xZBHjfdhPdK7QQ7m/FWog05ZUjZ4gO/hNiu4MayJ8n3m0cCnD1cmi2fcAkl5p57iOeh2ls+SOIjBCOOlLka6ma211vLnr/VogUESL14Dty6tY1o+82SP0U13baQoA2mxoNQljQteEabQJXGW9pBEZJ1/9mY2D5Z4J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757476194; c=relaxed/simple;
	bh=CtobsDpHkMnwWfsUf58E93sQjrVU4bJmq/F8e/JGmhI=;
	h=To:Subject:From:Message-Id:Date; b=FN26CTXM6Ra0HL3Hzbgj6mlY5E3aGtHLaxpbXKKLS4/Nyh73MKzuk0tN+wPxMVrOPzeI/icWOPuX7/hXw1HnVbZ5sczGBLwzFeM2CVxps2RmifdweUPRFGECo6E4hjO7N3V2psFtH7UcmGlJEHlb9kYlz5vYm48fqcrJlbw4qVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/MmWQl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/MmWQl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D74CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757476193;
	bh=CtobsDpHkMnwWfsUf58E93sQjrVU4bJmq/F8e/JGmhI=;
	h=To:Subject:From:Date:From;
	b=U/MmWQl4l3yEqEAhYxyhEAQno5GjgXZs9jIKZe7/WHGbbPT09XVtkGQ4ffNi3Bmja
	 7KZe4Phl/xVODH5RixrkEEdL1ELATsOR8YdYdDVwDH0r4dwwH5g+E1m4NXER4nPbp6
	 F4hbcLllu8UvWBa/QXn4WCI8toxzgWt9OhrRh+3KMzTFfVvivjxGYweMX5wYHJlNIg
	 VcUbh8iXBXmnNBcHL/YdWksEZ4qptuLPFfCrv0K4QNlxlIhZePlhNlpRmXh0j/yziQ
	 UDjmtsnEzqmxnHT+rYMWJ+L/FRhEO00O1CSN4Y1evFMTJ7O9t8Jk625RsZU85wzpwD
	 zS298UE6/e3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC59CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747619357.5936.227622202897742674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4b1dfb941412be00652dc2b22e64c2495fd210ef7a417543d2df919fac9346
Date: Wed, 10 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757476193
