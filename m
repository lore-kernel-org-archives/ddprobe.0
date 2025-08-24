Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F563282EB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756016394; cv=none; b=Ac/hIA60BOa+E7tqb2AJK+SwnQwp/zSSGpvPlIqKU+lWTl6t3LZQQTIeQInNMTJlAzLRdtIyY8KtNe5RioJBednq6pOKy9Y9pd4s4gteB0A6MDJ5+sg/3VDyGH4gbfPjVP+17aXUQujXX3OemTHSmz5eE/IzdCSTyzxSeF8w3Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756016394; c=relaxed/simple;
	bh=037RrmD6mHabaeyNJwovGMUUMGKolNMA5j5tUHWvpck=;
	h=To:Subject:From:Message-Id:Date; b=BhF8qWRG2wC7crCz9JG6chTYy/w4WJT001zCOONpkzWUy6GXfH3mpgVa0HVyTUG0n/ZeaT9Qu21ySKSQu3RmvUIMiDrmU8jlEbYzPcqGm9Rd6aW1yXH5DemmOu8K/ov2K+ansARIcTW2MgJnpYSf8uPWxy/BNzMDUQF9AxZy0dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBTvuA6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBTvuA6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A022AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756016393;
	bh=037RrmD6mHabaeyNJwovGMUUMGKolNMA5j5tUHWvpck=;
	h=To:Subject:From:Date:From;
	b=PBTvuA6v5yQZeQJywMpxg0FBxepJBVnbS+Q9QQj3uQeptGiSklhIAWFXu+I5AkoTS
	 iT7bHsG19x9O1mK7osxu6RC0H9kWX8NfJhNK7kTDR5VPUqmU/rMBl9jpP+WXkQcUwW
	 VT6cbqhiwO4rVqF98IREJlXM1LXx49/T/T15FdMvOkzgv5Dmu77Dl26aOdasSrBN8J
	 wDo7oSw65BAlaLtCGpePfIW5+NZ1ItBJ3fxlQBSED2k5R8eI9Kmw7qCnbDbR9Xctw0
	 USq5ivGr0vP7tqAbGQ2MyMZlU6itQy+MHDCwTcDcX/i9x7nS494YHoL5NTGn1AsswI
	 QKXRyH44s9Cvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C8CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601639357.22654.14143335848731332692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4465b9390abcf07bfe16968b571a89a5841638c3244086fe64cc3623b5c97a
Date: Sun, 24 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756016393
