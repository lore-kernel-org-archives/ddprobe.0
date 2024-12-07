Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277FB73477
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733566554; cv=none; b=PiTlOosgKUErSAlb4GhhJoaLD3t0AwXsKXKN4BOx9/tjNrovuOy6r4qrp5JEOoddVcQEUQQUQmhR2Tf9lJfC5xxR7oNGogz/VHd05Q7Jp7Cousbhx5/l2VCEx5koQcGKyMJzgbGKRArG+FVoGR7KCmGvFn5JI3JVavVc/tH4eOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733566554; c=relaxed/simple;
	bh=3VirkYrfpqMuBWg9bnWI9PhNFxx/db8sPPFjba0AOYs=;
	h=To:Subject:From:Message-Id:Date; b=STqlucmmZI+URHSzeIMdXGxzZVDRaZ+dWfuVvpcE69LzERygSZcV+LoXII3FlRQx0VudSRLmByW8nFGI0EynZO3e4+4R+groTF4W6rqK2+3TPTLwTUvqfJQJzdqVfE3B5CNZNLQpJU/MWlTn+wkYKlQyo5pT44V8Q6Ak3WSyrPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LC5X8fq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LC5X8fq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC227C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733566553;
	bh=3VirkYrfpqMuBWg9bnWI9PhNFxx/db8sPPFjba0AOYs=;
	h=To:Subject:From:Date:From;
	b=LC5X8fq9PdqSy4QwjcJpbPHU44YWEgvFERecayLbCst8Mew/JqMlkO5OvGiC5KCmN
	 FT4hlsyXjPgyLU4nSS1X6YK2R0HAwbe+AxSPfHp1d5liF+QMbg3pttbqIwIk7Ws6G8
	 YxokxZLWDCKxq/6hlWw3PHbmn+Pfq9llo7acm6x6NmXqwpOkqRII/wkJW+vjPtY10J
	 QWTh/oDmu2XsQ4YrO5AgY0vsuOcLIxTjf/UiYIJ4RyxT5xo0NBGFfq0hw/7NTNAfu6
	 pioLnUl9Bk2dGapUDuVMFGRYHkuJnc6bkTXw1uNRUsmMevXbTocf2Hn++iA7mjh6Qi
	 Tf1MlU3/PwcHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95645E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173356655360.27915.878598390880708485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3384f362238bf088ea0f9ca5322cf0337d20b525b90c9538397076782b607b8b
Date: Sat, 07 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733566553
