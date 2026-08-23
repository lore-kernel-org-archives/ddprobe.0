Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14BA36492A
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787473234; cv=none; b=RZlM86tEzGn+gxQzgk61CnByukMe7U0qYilKXfYXlykwQ7hWhd0b2QwNpvRMYwgKXQHK/j7RX7BxZM7d0CDJLAI4fqqZfylsEAq2ihyDwHxp33JwhhiD1pqsKXjguWlXzMI2IitywLCQnjYiquuYbGH46GmpPuklAYG6SQNe0nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787473234; c=relaxed/simple;
	bh=4Jtnp3kYYO4+jEy2FdM08LOVoN0J3T+tkTlKYAMQ6rE=;
	h=To:Subject:From:Message-Id:Date; b=SqY5eEF7kZvAjJQyvgFdxhDeVfuKVS3pmMXRgdGIoLJgeIaqA7Tmh5rv3FRCybR0BcXikN+58dt6RQkE4QRvSHkcN02HIzCTfmawZHPfzBNp9yXBsietT1ARQg80OMPZy3X1s/exsaKKPf9QeUagGKCkbaLa1mlVP73j1IRkWRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCab+yLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCab+yLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9301C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787473233;
	bh=4Jtnp3kYYO4+jEy2FdM08LOVoN0J3T+tkTlKYAMQ6rE=;
	h=To:Subject:From:Date:From;
	b=FCab+yLNyYJvNY4q/jpQpVWV9Wb4rhlasWNbKrbrI8UCE2K/t92TN0z+SNz2pTIAA
	 jIIdOOSq8dvsGNrh/mqC7peJu2tUhIKGHO3f09a/lvakDnjx9y0Jh06DxCh6IlBo9U
	 hGCcIVUc9BlAYiyfNe8MSpuCr/y1DP3284zZqcfpDvIP2hXTZJsfAL2MWWxzJCgHtV
	 /aJc70uJ5o3jvSlY7OiRDH4i7y+n0vvKHevJ0iYjzpBXhhqbhAdkZxAyPIb1lxZLPC
	 THjbvQaEXYuKaLjUisgpxxMk7L6HuZM3oqCcOvDwg2hJ3G8MDTI/JflX/oM2R/sB95
	 jxQzuTGfKj09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0331C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747323368.16779.13092068546427001323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4977048a74ab430b32b06811cf38c63620fddc292841576a2456705190f7ef
Date: Sun, 23 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787473233
